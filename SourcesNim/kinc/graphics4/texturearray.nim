import ../../utils/comptime
initialize("kinc/graphics4/texturearray.h","Kinc")

import ../image
# when defined(Direct3D11):
import ../../kincbackends/graphics4/Direct3D11/Direct3D11
# elif defined(OpenGL):
#import ../../kincbackends/graphics4/OpenGL/OpenGL

type
  kinc_g4_texture_array_t* {.importc:"kinc_g4_texture_array_t".} = object
    when defined(dynamic):
      impl*: kinc_g4_texture_array_impl_t    
    when defined(codegen):
      #echo "codegen: definition omitted!"

proc kinc_g4_texture_array_init*(array: ptr kinc_g4_texture_array_t, textures: ptr kinc_image_t, count: cint)
    {.importc: "kinc_g4_texture_array_init".}
proc kinc_g4_texture_array_destroy*(array: ptr kinc_g4_texture_array_t)
    {.importc: "kinc_g4_texture_array_init".}