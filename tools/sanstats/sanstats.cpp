//===- sanstats.cpp - Sanitizer statistics dumper -------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This tool dumps statistics information from files in the format produced
// by clang's -fsanitize-stats feature.
//
//===----------------------------------------------------------------------===//

#include "llvm/DebugInfo/Symbolize/Symbolize.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ErrorOr.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Transforms/Utils/SanitizerStats.h"
#include <stdint.h>

using namespace llvm;

static cl::opt<std::string> ClInputFile(cl::Positional, cl::Required,
                                        cl::desc("<filename>"));

static cl::opt<bool> ClDemangle("demangle", cl::init(false),
                                cl::desc("Print demangled function name."));

inline uint64_t KindFromData(uint64_t Data, char SizeofPtr) {
  return Data >> (SizeofPtr * 8 - kSanitizerStatKindBits);
}

inline uint64_t CountFromData(uint64_t Data, char SizeofPtr) {
  return Data & ((1ull << (SizeofPtr * 8 - kSanitizerStatKindBits)) - 1);
}

uint64_t ReadLE(char Size, const char *Begin, const char *End) {
  uint64_t Result = 0;
  char Pos = 0;
  while (Begin < End && Pos != Size) {
    Result |= uint64_t(uint8_t(*Begin)) << (Pos * 8);
    ++Begin;
    ++Pos;
  }
  return Result;
}

const char *ReadModule(char SizeofPtr, const char *Begin, const char *End) {
  const char *FilenameBegin = Begin;
  while (Begin != End && *Begin)
    ++Begin;
  if (Begin == End)
    return nullptr;
  StringRef Filename(FilenameBegin, Begin - FilenameBegin);

  ++Begin;
  if (Begin == End)
    return nullptr;

  symbolize::LLVMSymbolizer::Options SymbolizerOptions;
  SymbolizerOptions.Demangle = ClDemangle;
  SymbolizerOptions.UseSymbolTable = true;
  symbolize::LLVMSymbolizer Symbolizer(SymbolizerOptions);

  while (1) {
    uint64_t Addr = ReadLE(SizeofPtr, Begin, End);
    Begin += SizeofPtr;
    uint64_t Data = ReadLE(SizeofPtr, Begin, End);
    Begin += SizeofPtr;

    if (Begin > End)
      return nullptr;
    if (Addr == 0 && Data == 0)
      return Begin;
    if (Begin == End)
      return nullptr;

    ErrorOr<DILineInfo> LineInfo = Symbolizer.symbolizeCode(Filename, Addr);
    if (LineInfo) {
      llvm::outs() << LineInfo->FileName << ':' << LineInfo->Line << ' '
                   << LineInfo->FunctionName << ' ';
    } else {
      llvm::outs() << "<error> ";
    }

    switch (KindFromData(Data, SizeofPtr)) {
    case SanStat_CFI_VCall:
      llvm::outs() << "cfi-vcall";
      break;
    case SanStat_CFI_NVCall:
      llvm::outs() << "cfi-nvcall";
      break;
    case SanStat_CFI_DerivedCast:
      llvm::outs() << "cfi-derived-cast";
      break;
    case SanStat_CFI_UnrelatedCast:
      llvm::outs() << "cfi-unrelated-cast";
      break;
    case SanStat_CFI_ICall:
      llvm::outs() << "cfi-icall";
      break;
    default:
      llvm::outs() << "<unknown>";
      break;
    }

    llvm::outs() << " " << CountFromData(Data, SizeofPtr) << '\n';
  }
}

int main(int argc, char **argv) {
  cl::ParseCommandLineOptions(argc, argv,
                              "Sanitizer Statistics Processing Tool");

  ErrorOr<std::unique_ptr<MemoryBuffer>> MBOrErr =
      MemoryBuffer::getFile(ClInputFile, -1, false);
  if (!MBOrErr) {
    errs() << argv[0] << ": " << ClInputFile << ": "
           << MBOrErr.getError().message() << '\n';
    return 1;
  }
  std::unique_ptr<MemoryBuffer> MB = std::move(MBOrErr.get());
  const char *Begin = MB->getBufferStart(), *End = MB->getBufferEnd();
  if (Begin == End) {
    errs() << argv[0] << ": " << ClInputFile << ": short read\n";
    return 1;
  }
  char SizeofPtr = *Begin++;
  while (Begin != End) {
    Begin = ReadModule(SizeofPtr, Begin, End);
    if (Begin == nullptr) {
      errs() << argv[0] << ": " << ClInputFile << ": short read\n";
      return 1;
    }
    assert(Begin <= End);
  }
}
