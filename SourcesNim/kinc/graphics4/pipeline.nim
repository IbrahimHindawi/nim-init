import ../../initializer
initialize("kinc/graphics4/pipeline.h","Kinc")

import vertexstructure
import shader

#const hhkPipe = "kinc/graphics4/pipeline.h"
#const hhkCLoc = "kinc/graphics4/constantlocation.h"

# todo: come back to this file
#type
#    Kinc_g4_constant_location* {.importc:"kinc_g4_constant_location_t", header: hhkCLoc.} = object
#    Kinc_g4_texture_unit* {.importc:"kinc_g4_texture_unit_t", header: hhkCLoc.} = object



type
    KincG4_blending_operation* {.bycopy.} = enum
       kincG4BlendOne,
       kincG4BlendZero,
       kincG4BlendSourceAlpha,
       kincG4BlendDestAlpha,
       kincG4BlendINVSourceAlpha,
       kincG4BlendINVDestAlpha,
       kincG4BlendSourceColor,
       kincG4BlendDestColor,
       kincG4BlendINVSourceColor,
       kincG4BlendINVDestColor
    KincG4_compare_mode* {.bycopy.} = enum
       kincG4CompareALWAYS,
       kincG4CompareNEVER,
       kincG4CompareEQUAL,
       kincG4CompareNOTEqual,
       kincG4CompareLESS,
       kincG4CompareLESSEqual,
       kincG4CompareGREATER,
       kincG4CompareGREATEREqual
    KincG4_cull_mode* {.bycopy.} = enum
       kincG4CullClockwise,
       kincG4CullCounterClockwise,
       kincG4CullNothing
    KincG4_stencil_action* {.bycopy.} = enum
       kincG4StencilKEEP,
       kincG4StencilZERO,
       kincG4StencilREPLACE,
       kincG4StencilINCREMENT,
       kincG4StencilINCREMENTWrap,
       kincG4StencilDECREMENT,
       kincG4StencilDECREMENTWrap,
       kincG4StencilINVERT

    kinc_g4_pipeline_t* {.bycopy.} = object
        input_layout*:array[16, ptr kinc_g4_vertex_structure_t]
        vertex_shader*:ptr kinc_g4_shader_t
        fragment_shader*:ptr kinc_g4_shader_t
        geometry_shader*:ptr kinc_g4_shader_t
        tessellation_control_shader*:ptr kinc_g4_shader_t
        tessellation_evaluation_shader*:ptr kinc_g4_shader_t

        cull_mode:Kinc_g4_cull_mode

        depth_write:bool
        depth_mode:Kinc_g4_compare_mode

        stencil_mode: Kinc_g4_compare_mode 
        stencil_both_pass:Kinc_g4_stencil_action
        stencil_depth_fail:Kinc_g4_stencil_action
        stencil_fail:Kinc_g4_stencil_action
        stencil_reference_value:cint
        stencil_read_mask:cint
        stencil_write_mask:cint

        # One, Zero deactivates blending
        blend_source*: Kinc_g4_blending_operation
        blend_destination*: Kinc_g4_blending_operation
        # BlendingOperation blendOperation
        alpha_blend_source*: Kinc_g4_blending_operation
        alpha_blend_destination*: Kinc_g4_blending_operation
        # BlendingOperation alphaBlendOperation

        color_write_mask_red: array[8, bool] # Per render target
        color_write_mask_green: array[8, bool]
        color_write_mask_blue: array[8, bool]
        color_write_mask_alpha: array[8, bool]

        conservative_rasterization: bool 

proc kinc_g4_pipeline_init*(state: ptr kinc_g4_pipeline_t)
    {.importc: "kinc_g4_pipeline_init".}
proc kinc_g4_pipeline_destroy*(state: ptr kinc_g4_pipeline_t)
    {.importc: "kinc_g4_pipeline_destroy".}
proc kinc_g4_pipeline_compile*(state: ptr kinc_g4_pipeline_t)
    {.importc: "kinc_g4_pipeline_compile".}
#proc kinc_g4_pipeline_get_constant_location*(state: ptr kinc_g4_pipeline_t, name:cstring):Kinc_g4_constant_location {.importc: "kinc_g4_pipeline_get_constant_location".}
#proc kinc_g4_pipeline_get_texture_unit*(state: ptr kinc_g4_pipeline_t, name:cstring):Kinc_g4_texture_unit {.importc: "kinc_g4_pipeline_get_texture_unit".}