import ../../utils/comptime
initialize("kinc/graphics4/shader.h","Kinc")

#{.emit:"#include <kinc/backend/graphics4/shader.h>".}

# type
#   kinc_g4_shader_impl_t* {.bycopy.} = object

# when defined(Direct3D11):
import ../../kincbackends/graphics4/Direct3D11/Direct3D11
# elif defined(OpenGL):
#import ../../kincbackends/graphics4/OpenGL/OpenGL

type 
  kinc_g4_shader_type_t* {.bycopy.} = enum
    KINC_G4_SHADER_TYPE_FRAGMENT,
    KINC_G4_SHADER_TYPE_VERTEX,
    kincG4ShaderTypeGeometry,
    kincG4ShaderTypeTessellationControl,
    kincG4ShaderTypeTessellationEvaluation
  kinc_g4_shader_t* {. bycopy.} = object
    when defined(dynamic):
      impl*:kinc_g4_shader_impl_t
    when defined(codegen):
      #echo "codegen: definition omitted!"


proc kinc_g4_shader_init*(shader: ptr kinc_g4_shader_t, data: pointer, length: csize_t, tipe:kinc_g4_shader_type_t)
  {.importc:"kinc_g4_shader_init".}