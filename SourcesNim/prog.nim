import nSpecOps/nLogOps
import nSpecOps/nMathOps

proc nim_enter() {.exportc.} = 
  var x =  mathOpZero(32)
  echo x

  logOpZero("w_o_r_d")

  var y = mathOpZero(64)
  echo y

nim_enter()