import ../../utils/comptime
initialize("kinc/graphics4/rendertarget.h","Kinc")

import ../../kincbackends/graphics4/Direct3D11/Direct3D11

type
  kinc_g4_render_target_format_t* {.size: sizeof(cint).} = enum
    KINC_G4_RENDER_TARGET_FORMAT_32BIT, KINC_G4_RENDER_TARGET_FORMAT_64BIT_FLOAT,
    KINC_G4_RENDER_TARGET_FORMAT_32BIT_RED_FLOAT,
    KINC_G4_RENDER_TARGET_FORMAT_128BIT_FLOAT,
    KINC_G4_RENDER_TARGET_FORMAT_16BIT_DEPTH,
    KINC_G4_RENDER_TARGET_FORMAT_8BIT_RED,
    KINC_G4_RENDER_TARGET_FORMAT_16BIT_RED_FLOAT
  kinc_g4_render_target_t* {.bycopy.} = object
    width*: cint
    height*: cint
    texWidth*: cint
    texHeight*: cint
    contextId*: cint
    isCubeMap*: bool
    isDepthAttachment*: bool
    when defined(dynamic):
      impl*: kinc_g4_render_target_impl_t
    elif defined(codegen):
      # nothing . . . 

proc kinc_g4_render_target_init*(renderTarget: ptr kinc_g4_render_target_t, width: cint, height: cint, depthBufferBits: cint, 
  antialiasing: bool, format: kinc_g4_render_target_format_t, stencilBufferBits: cint, contextId: cint)
  {.importc:"kinc_g4_render_target_init".}

# void kinc_g4_render_target_init_cube(kinc_g4_render_target_t *renderTarget, int cubeMapSize, int depthBufferBits, bool antialiasing,
#                                      kinc_g4_render_target_format_t format, int stencilBufferBits, int contextId);

proc kinc_g4_render_target_destroy*(renderTarget: ptr kinc_g4_render_target_t)
  {.importc:"kinc_g4_render_target_init".}

# void kinc_g4_render_target_use_color_as_texture(kinc_g4_render_target_t *renderTarget, kinc_g4_texture_unit_t unit);
# void kinc_g4_render_target_use_depth_as_texture(kinc_g4_render_target_t *renderTarget, kinc_g4_texture_unit_t unit);
# void kinc_g4_render_target_set_depth_stencil_from(kinc_g4_render_target_t *renderTarget, kinc_g4_render_target_t *source);
# void kinc_g4_render_target_get_pixels(kinc_g4_render_target_t *renderTarget, uint8_t *data);
# void kinc_g4_render_target_generate_mipmaps(kinc_g4_render_target_t *renderTarget, int levels);