import ../../initializer
initialize("kinc/graphics4/texture.h","Kinc")

import ../image
import ../../kincbackends/graphics4/Direct3D11/Direct3D11


type
  kinc_g4_image_t* = kinc_image_t
  kinc_g4_texture_t* {.importc:"kinc_g4_texture_t", bycopy.} = object
    tex_width*: cint
    tex_height*: cint
    tex_depth*: cint
    format*: kinc_image_format_t
    when defined(dynamic):
      impl*: kinc_g4_texture_impl_t    
    when defined(codegen):
      #echo "codegen: definition omitted!"
    


proc kinc_g4_texture_init_from_image*(texture:var kinc_g4_texture_t, image:var kinc_image_t) 
    {.importc:"kinc_g4_texture_init_from_image".}