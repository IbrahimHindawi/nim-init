import ../../initializer
initialize("kinc/graphics4/vertexstructure.h","Kinc")

const kinc_g4_max_vertex_elements = 16

type 
  kinc_g4_vertex_data_t* {.bycopy.} = enum 
    kincG4VertexDataNone,
    kincG4VertexDataFloat1,
    kincG4VertexDataFloat2,
    KINC_G4_VERTEX_DATA_FLOAT3,
    kincG4VertexDataFloat4,
    kincG4VertexDataFloat4X4,
    kincG4VertexDataShort2Norm,
    kincG4VertexDataShort4Norm,
    kincG4VertexDataColor
  kinc_g4_vertex_element_t* {.bycopy.} = object
    name:cstring
    data:kinc_g4_vertex_data_t
  kinc_g4_vertex_structure_t* {. bycopy.} = object
    elements:array[kinc_g4_max_vertex_elements, kinc_g4_vertex_element_t]
    size:cint
    instanced:bool

proc kinc_g4_vertex_element_init*(element: ptr kinc_g4_vertex_element_t, name:cstring, data: kinc_g4_vertex_data_t)
    {.importc:"kinc_g4_vertex_element_init".}
proc kinc_g4_vertex_structure_init*(structure: ptr kinc_g4_vertex_structure_t)
    {.importc:"kinc_g4_vertex_structure_init".}
proc kinc_g4_vertex_structure_add*(structure: ptr kinc_g4_vertex_structure_t, name:cstring, data: kinc_g4_vertex_data_t)
    {.importc:"kinc_g4_vertex_structure_add".}
