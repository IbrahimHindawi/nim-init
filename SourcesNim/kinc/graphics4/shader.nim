import ../../initializer
initialize("kinc/graphics4/shader.h","Kinc")


type 
    kinc_g4_shader_type_t* {.bycopy.} = enum
        KINC_G4_SHADER_TYPE_FRAGMENT,
        KINC_G4_SHADER_TYPE_VERTEX,
        kincG4ShaderTypeGeometry,
        kincG4ShaderTypeTessellationControl,
        kincG4ShaderTypeTessellationEvaluation
    kinc_g4_shader_t* {.bycopy.} = object

proc kinc_g4_shader_init*(shader: ptr kinc_g4_shader_t, data: pointer, length: csize_t, tipe:kinc_g4_shader_type_t)
    {.importc:"kinc_g4_shader_init".}