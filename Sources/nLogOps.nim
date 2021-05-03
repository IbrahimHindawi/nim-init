when defined(debug):
  {.push dynlib:"cSpecOps.dll".}
elif defined(codegen):
  {.push header:"cLogOps.h".}

#{.compile:"../lib/cSpecOps/logOps/cLogOps.c".}
proc logOpZero*(x: cstring) {.importc:"logOpZero".}

#{.pop.}