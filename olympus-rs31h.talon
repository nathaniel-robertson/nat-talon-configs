# Left button to instantly enable and disable dictation mode
key(f16:down):
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()             
key(f16:up):
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")             

# # Center button
# key(f17:down):
#     user.mouse_scroll_down_continuous()
#     user.mouse_scroll_down()
#     repeat(2)
# key(f17:up):                user.mouse_scroll_stop()

# Center button
key(f17:down):
    user.mouse_cursor_hide()
    user.mouse_gaze_scroll()
key(f17:up):                
    user.mouse_scroll_stop()
    user.mouse_cursor_show()

# Right button
#key(f18:repeat):  
#    core.repeat_command(1)            
#    sleep(150ms)
key(f18:down):
    tracking.control_toggle()
	tracking.control_zoom_toggle()
key(f18:up):
    tracking.control_toggle()
	tracking.control_zoom_toggle()

# # Top button
# key(f19:down):              
#     user.mouse_scroll_up_continuous()
# key(f19:up):                user.mouse_scroll_stop()


