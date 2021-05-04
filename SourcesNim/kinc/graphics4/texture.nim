import ../../initializer
initialize("kinc/graphics4/texture.h","Kinc")

import ../image

type 
    KincG4Texture* {.importc:"kinc_g4_texture_t".} = object
        tex_width*: cint
        tex_height*: cint
        tex_depth*: cint
        format*: KincImageFormat
        # impl


proc kinc_g4_texture_init_from_image*(texture:var Kinc_g4_texture, image:var kinc_image_t) 
    {.importc:"kinc_g4_texture_init_from_image".}