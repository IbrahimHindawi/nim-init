#[
  debugger & codegen setup

]#

#{.compile:"../cSpecOps/logOps/cLogOps.c".}
#proc logOpZero(x: cstring) {.importc:"logOpZero", header:"cLogOps.h".}
proc logOpZero(x: cstring) {.importc:"logOpZero", dynlib:"cSpecOps.dll".}

#{.compile:"../cSpecOps/mathOps/cMathOps.c".}
#proc mathOpZero(x: cint): cint {.importc:"mathOpZero", header:"cMathOps.h".}
proc mathOpZero(x: cint): cint {.importc:"mathOpZero", dynlib:"cSpecOps.dll".}

proc nim_enter() {.exportc.} = 
  var x =  mathOpZero(32)
  echo x

  logOpZero("w_o_r_d")

  var y = mathOpZero(64)
  echo y

nim_enter()