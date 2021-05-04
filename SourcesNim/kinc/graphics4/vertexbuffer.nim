import ../../initializer
initialize("kinc/graphics4/vertexbuffer.h","Kinc")

import vertexstructure
import ../../kincbackends/graphics4/Direct3D11/Direct3D11

type 
  Kinc_g4_usage* {.bycopy.} = enum
    KINC_G4_USAGE_STATIC,
    KINC_G4_USAGE_DYNAMIC,
    KINC_G4_USAGE_READABLE
  kinc_g4_vertex_buffer_t* {.bycopy.} = object
    when defined(dynamic):
      impl*: kinc_g4_vertex_buffer_impl_t    
    when defined(codegen):
      #echo "codegen: definition omitted!"


proc kinc_g4_vertex_buffer_init*(buffer: ptr kinc_g4_vertex_buffer_t, count:cint, structure: ptr kinc_g4_vertex_structure_t, usage: Kinc_g4_usage, instance_data_step_rate:cint)
    {.importc:"kinc_g4_vertex_buffer_init".}
proc kinc_g4_vertex_buffer_destroy*(buffer: ptr kinc_g4_vertex_buffer_t)
    {.importc:"kinc_g4_vertex_buffer_destroy".}
proc kinc_g4_vertex_buffer_lock_all*(buffer: ptr kinc_g4_vertex_buffer_t):ptr cfloat#UncheckedArray[cfloat]
    {.importc:"kinc_g4_vertex_buffer_lock_all".}
proc kinc_g4_vertex_buffer_lock*(buffer: ptr kinc_g4_vertex_buffer_t, start:cint, count:cint):ptr UncheckedArray[cfloat]
    {.importc:"kinc_g4_vertex_buffer_lock".}
proc kinc_g4_vertex_buffer_unlock_all*(buffer: ptr kinc_g4_vertex_buffer_t)
    {.importc:"kinc_g4_vertex_buffer_unlock_all".}
proc kinc_g4_vertex_buffer_unlock*(buffer: ptr kinc_g4_vertex_buffer_t, count:cint)
    {.importc:"kinc_g4_vertex_buffer_unlock".}
proc kinc_g4_vertex_buffer_count*(buffer: ptr kinc_g4_vertex_buffer_t):cint
    {.importc:"kinc_g4_vertex_buffer_count".}
proc kinc_g4_vertex_buffer_stride*(buffer: ptr kinc_g4_vertex_buffer_t):cint
    {.importc:"kinc_g4_vertex_buffer_stride".}
proc kinc_g4_set_vertex_buffers*(buffers: ptr ptr kinc_g4_vertex_buffer_t, count:cint)
    {.importc:"kinc_g4_set_vertex_buffers".}
proc kinc_g4_set_vertex_buffer*(buffer: ptr kinc_g4_vertex_buffer_t)
    {.importc:"kinc_g4_set_vertex_buffer".}