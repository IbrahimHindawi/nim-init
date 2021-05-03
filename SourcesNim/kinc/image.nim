const hhkImage = "kinc/image.h"

type 
    KincImageCompression* {.importc:"enum kinc_image_compression", header:hhkImage.} = enum
        kincImageCompressionNone,
        kincImageCompressionDXT5,
        kincImageCompressionASTC,
        kincImageCompressionVRTC    
    KincImageFormat* {.importc:"enum kinc_image_format", header:hhkImage.} = enum
        kincImageFormatRGBA32, 
        kincImageFormatGrey8,
        kincImageFormatRGB24,
        kincImageFormatRGBA128,
        kincImageFormatA32,
        kincImageFormatBGRA32,
        kincImageFormatA16
    kinc_image_t* {.importc:"kinc_image_t", header:hhkImage.} = object
        width, height, depth*: cint
        format*: KincImageFormat
        internal_format*: cuint
        compression*: KincImageCompression
        data*: pointer
        data_size*: cint

proc kinc_image_init_from_file*(image: ptr kinc_image_t, memory: pointer, filename: cstring) 
    {.header:hhkImage.}

proc kinc_image_destroy*(image:ptr kinc_image_t) {.header:hhkImage.}  