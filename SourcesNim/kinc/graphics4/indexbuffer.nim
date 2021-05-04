import ../../initializer
initialize("kinc/graphics4/indexbuffer.h","Kinc")

type 
    kinc_g4_index_buffer_t* 
        {.bycopy.} = object

    kinc_g4_index_buffer_format_t* {.bycopy.} = enum
        KINC_G4_INDEX_BUFFER_FORMAT_32BIT, KINC_G4_INDEX_BUFFER_FORMAT_16BIT
#  kinc_g4_index_buffer_t* {.bycopy.} = object
#    impl*: kinc_g4_index_buffer_impl_t    

proc kinc_g4_index_buffer_init*(buffer: ptr kinc_g4_index_buffer_t; count: cint; format: kinc_g4_index_buffer_format_t)
    {.importc:"kinc_g4_index_buffer_init".}
proc kinc_g4_index_buffer_destroy*(buffer: ptr kinc_g4_index_buffer_t)
    {.importc:"kinc_g4_index_buffer_destroy".}
proc kinc_g4_index_buffer_lock*(buffer: ptr kinc_g4_index_buffer_t):ptr cint#ptr UncheckedArray[cint]
    {.importc:"kinc_g4_index_buffer_lock".}
proc kinc_g4_index_buffer_unlock*(buffer: ptr kinc_g4_index_buffer_t)
    {.importc:"kinc_g4_index_buffer_unlock".}
proc kinc_g4_index_buffer_count*(buffer: ptr kinc_g4_index_buffer_t):cint
    {.importc:"kinc_g4_index_buffer_count".}
proc kinc_g4_set_index_buffer*(buffer: ptr kinc_g4_index_buffer_t)
    {.importc:"kinc_g4_set_index_buffer".}