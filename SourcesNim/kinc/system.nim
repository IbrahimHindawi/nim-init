import ../utils/comptime
initialize("kinc/system.h","Kinc")

import window

proc kinc_init*(name: cstring, width: cint, height: cint, win: ptr kinc_window_options_t, frame: ptr kinc_framebuffer_options_t): cint
    {.importc: "kinc_init".}
proc kinc_application_name*():cstring
    {.importc: "kinc_application_name".}
proc kinc_set_application_name*(name: cstring)
    {.importc: "kinc_set_application_name".}
proc kinc_width*(): cint
    {.importc: "kinc_width".}
proc kinc_height*(): cint
    {.importc: "kinc_height".}

proc kinc_start*()
    {.importc: "kinc_start".}
proc kinc_internal_frame*():bool
    {.importc: "kinc_internal_frame".}
proc kinc_stop*()
    {.importc: "kinc_stop".}

proc kinc_login*()
    {.importc: "kinc_login".}
proc kinc_unlock_achievement*(id: cint)
    {.importc: "kinc_unlock_achievement".}
proc kinc_disallow_user_change*()
    {.importc: "kinc_disallow_user_change".}
proc kinc_allow_user_change*()
    {.importc: "kinc_allow_user_change".}

proc kinc_set_keep_screen_on*(on: bool)
    {.importc: "kinc_set_keep_screen_on".}

type VoidCCallback = proc():void {.cdecl.}
proc kinc_set_update_callback*(cb: VoidCCallback) 
    {.importc: "kinc_set_update_callback".} #{.importc:"kinc_set_update_callback", dynlib:"libkinc.so".}  #
# proc kinc_set_foreground_callback*(void *(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_resume_callback*(void *(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_pause_callback*(void *(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_background_callback*(void *(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_shutdown_callback*(void *(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_drop_files_callback*(void *(*value)*(wchar_t *))
#     {.header: hhkSystem.}
# proc kinc_set_cut_callback*(char **(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_copy_callback*(char **(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_paste_callback*(void *(*value)*(char *))
#     {.header: hhkSystem.}
# proc kinc_set_login_callback*(void *(*value)*())
#     {.header: hhkSystem.}
# proc kinc_set_logout_callback*(void *(*value)*())
#     {.header: hhkSystem.}