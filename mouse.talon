os: mac
-

((swap|toggle) mouse|tracking mode):
	tracking.control_toggle()
	tracking.control_zoom_toggle()

tracking head only:
    tracking.control_gaze_toggle()

jiggle mouse:
	user.mouse_cardinal_move_1d('right',30)
	sleep(100ms)
	user.mouse_cardinal_move_1d('left',30)

(fly | flick):
	#user.mouse_trigger_zoom_mouse()
    tracking.zoom()

# (wheel|whale) [upper] to top here:
# 	user.mouse_move_center_active_window()
#     sleep(100ms)
#     user.mouse_cardinal_move_1d('right',30)
# 	sleep(100ms)
# 	user.mouse_cardinal_move_1d('left',30)
#     user.mouse_scroll_up_continuous()
# 	user.mouse_scroll_up()
# 	repeat(9)

(wheel|whale) [upper] to top:
    # user.mouse_cardinal_move_1d('right',30)
	sleep(100ms)
	# user.mouse_cardinal_move_1d('left',30)
	user.mouse_scroll_up_continuous()
    user.mouse_scroll_up()
	repeat(9)

# (wheel|whale) [downer] to bottom here:
# 	user.mouse_move_center_active_window()
#     sleep(100ms)
#     user.mouse_cardinal_move_1d('right',30)
# 	sleep(100ms)
# 	user.mouse_cardinal_move_1d('left',30)
#     user.mouse_scroll_up_continuous()
# 	user.mouse_scroll_down()
# 	repeat(9)

(wheel|whale) [downer] to bottom:
    # user.mouse_cardinal_move_1d('right',30)
	sleep(100ms)
	# user.mouse_cardinal_move_1d('left',30)
	user.mouse_scroll_down_continuous()
	user.mouse_scroll_down()
	repeat(9)

(wheel|whale) downer:
    user.mouse_cardinal_move_1d('right',30)
	sleep(100ms)
	user.mouse_cardinal_move_1d('left',30)
    user.mouse_scroll_down_continuous()

# (wheel|whale) downer here:
#     user.mouse_move_center_active_window()
#     user.mouse_cardinal_move_1d('right',30)
# 	sleep(100ms)
# 	user.mouse_cardinal_move_1d('left',30)
#     user.mouse_scroll_down_continuous()

(wheel|whale) upper:
    user.mouse_cardinal_move_1d('right',30)
	sleep(100ms)
	user.mouse_cardinal_move_1d('left',30)
    user.mouse_scroll_up_continuous()

# (wheel|whale) upper here:
#     user.mouse_move_center_active_window()
#     user.mouse_cardinal_move_1d('right',30)
# 	sleep(100ms)
# 	user.mouse_cardinal_move_1d('left',30)
#     user.mouse_scroll_up_continuous()

(mouse | cursor) here:
	user.mouse_move_center_active_window()

# overrides for knausj_talon

touch:
    mouse_click(0)
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for right drags specifically
    user.mouse_drag_end()
    # close zoom mouse if open
	tracking.zoom_cancel()

(righty|right click):
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()

mid click:
    mouse_click(2)
    # close the mouse grid
    user.grid_close()

(dub click | duke):
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
	# close zoom mouse if open
	tracking.zoom_cancel()

(trip click | trip lick):
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
left drag | drag:
    user.mouse_drag(0)
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
right drag | righty drag:
    user.mouse_drag(1)
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
end drag | drag end: user.mouse_drag_end()

(trip click | trip lick):
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
left drag | drag:
    user.mouse_drag(0)
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
right drag | righty drag:
    user.mouse_drag(1)
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
end drag | drag end: user.mouse_drag_end()
(trip click | trip lick):
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
left drag | drag:
    user.mouse_drag(0)
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
right drag | righty drag:
    user.mouse_drag(1)
    # close the mouse grid
    user.grid_close()
    # close zoom mouse if open
	tracking.zoom_cancel()
end drag | drag end: user.mouse_drag_end()