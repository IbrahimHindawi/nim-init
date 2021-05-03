
const hhkWindow = "kinc/window.h"

const kinc_window_feature_resizeable* = 1
const kinc_window_feature_minimizable* = 2
const kinc_window_feature_maximizable* = 4
const kinc_window_feature_borderless* = 8
const kinc_window_feature_on_top* = 16

type 
    kinc_framebuffer_options_t* {.importc:"kinc_framebuffer_options_t", header:hhkWindow.} = object
        frequency*:cint
        vertical_sync*:bool 
        color_bits*:cint 
        depth_bits*:cint 
        stencil_bits*:cint 
        samples_per_pixel*:cint 
    Kinc_window_mode* {.importc:"kinc_window_mode_t", header:hhkWindow.} = enum
        KINC_WINDOW_MODE_WINDOW,
        KINC_WINDOW_MODE_FULLSCREEN,
        KINC_WINDOW_MODE_EXCLUSIVE_FULLSCREEN # Only relevant for Windows 

    kinc_window_options_t* {.importc:"kinc_window_options_t", header:hhkWindow.} = object
        title*: cstring
        x*:cint 
        y*:cint 
        width*:cint 
        height*:cint 
        display_index*:cint 
        visible*:bool 
        window_features*:cint 
        mode*: Kinc_window_mode