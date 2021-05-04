import ../../initializer
initialize("kinc/graphics4/texturearray.h","Kinc")

import ../image
import ../../kincbackends/graphics4/Direct3D11/Direct3D11
#const hhkTextureA = "kinc/graphics4/texturearray.h"

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