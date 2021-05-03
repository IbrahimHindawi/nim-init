import ../../initializer
initialize("kinc/graphics4/vertexstructure.h","Kinc")

const kinc_g4_max_vertex_elements = 16

type 
    KincG4VertexData* {.importc:"enum kinc_g4_vertex_data".} = enum 
        kincG4VertexDataNone,
        kincG4VertexDataFloat1,
        kincG4VertexDataFloat2,
        KINC_G4_VERTEX_DATA_FLOAT3,
        kincG4VertexDataFloat4,
        kincG4VertexDataFloat4X4,
        kincG4VertexDataShort2Norm,
        kincG4VertexDataShort4Norm,
        kincG4VertexDataColor
    KincG4VertexElement* {.importc:"kinc_g4_vertex_element_t".} = object
        name:cstring
        data:Kinc_g4_vertex_data
    kinc_g4_vertex_structure_t* {.importc:"kinc_g4_vertex_structure_t".} = object
        elements:array[kinc_g4_max_vertex_elements, KincG4VertexElement]
        size:cint
        instanced:bool

proc kinc_g4_vertex_element_init*(element: ptr Kinc_g4_vertex_element, name:cstring, data: Kinc_g4_vertex_data)
    {.importc:"kinc_g4_vertex_element_init".}
proc kinc_g4_vertex_structure_init*(structure: ptr kinc_g4_vertex_structure_t)
    {.importc:"kinc_g4_vertex_structure_init".}
proc kinc_g4_vertex_structure_add*(structure: ptr kinc_g4_vertex_structure_t, name:cstring, data: Kinc_g4_vertex_data)
    {.importc:"kinc_g4_vertex_structure_add".}
