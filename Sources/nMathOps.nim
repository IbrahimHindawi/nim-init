when defined(debug):
  {.push dynlib:"cSpecOps.dll".}
elif defined(codegen):
  {.push header:"cMathOps.h".}

#{.compile:"../lib/cSpecOps/mathOps/cMathOps.c".}
proc mathOpZero*(x: cint): cint {.importc:"mathOpZero", dynlib:"cSpecOps.dll".}

#{.pop.}