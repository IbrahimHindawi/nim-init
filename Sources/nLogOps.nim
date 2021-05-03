when defined(windows):
  const libExt = ".dll"
elif defined(linux):
  const libExt = ".so"
elif defined(macosx):
  const libExt = ".dylib"

when defined(debug):
  {.push dynlib:"cSpecOps.dylib".}
elif defined(codegen):
  {.push header:"cLogOps.h".}

#{.compile:"../lib/cSpecOps/logOps/cLogOps.c".}
proc logOpZero*(x: cstring) {.importc:"logOpZero".}

#{.pop.}