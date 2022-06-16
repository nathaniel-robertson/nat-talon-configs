swap mouse:
	user.mouse_toggle_control_mouse()
	user.mouse_toggle_zoom_mouse()

(buzz | fly | flick):
	user.mouse_trigger_zoom_mouse()

wheel [upper] to top here:
	user.mouse_move_center_active_window()
    user.mouse_scroll_up_continuous()
	user.mouse_scroll_up()
	repeat(9)

wheel [upper] to top:
	user.mouse_scroll_up_continuous()
	repeat(9)

wheel [downer] to bottom here:
	user.mouse_move_center_active_window()
    user.mouse_scroll_up_continuous()
	user.mouse_scroll_down()
	repeat(9)

wheel [downer] to bottom:
	user.mouse_scroll_up_continuous()
	user.mouse_scroll_down()
	repeat(9)

(mouse | cursor) here:
	user.mouse_move_center_active_window()