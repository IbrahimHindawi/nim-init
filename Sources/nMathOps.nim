when defined(windows):
  const libExt = ".dll"
elif defined(linux):
  const libExt = ".so"
elif defined(macosx):
  const libExt = ".dylib"

when defined(dynamic):
  {.push dynlib:"cSpecOps"&libExt.}
elif defined(codegen):
  {.push header:"cMathOps.h".}

#{.compile:"../lib/cSpecOps/mathOps/cMathOps.c".}
proc mathOpZero*(x: cint): cint {.importc:"mathOpZero".}

#{.pop.}