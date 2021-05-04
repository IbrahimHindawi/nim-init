import ../../initializer
initialize("kinc/graphics4/texturearray.h","Kinc")

import ../image

#const hhkTextureA = "kinc/graphics4/texturearray.h"

type
    KincG4TextureArray* {.importc:"kinc_g4_texture_array_t".} = object
        #kinc_g4_texture_array_impl_t impl

proc kinc_g4_texture_array_init*(array: ptr Kinc_g4_texture_array, textures: ptr kinc_image_t, count: cint)
    {.importc: "kinc_g4_texture_array_init".}
proc kinc_g4_texture_array_destroy*(array: ptr Kinc_g4_texture_array)
    {.importc: "kinc_g4_texture_array_init".}