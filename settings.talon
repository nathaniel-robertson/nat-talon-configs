os: mac
-

# tag(): user.full_mouse_grid_enabled.

tag(): user.mouse_cursor_commands_enable
tag(): user.prefixed_numbers

# Changes mouse grid to use phone keypad style layout. Reversing the rows doesn't work for my brain.
settings():
    user.grids_put_one_bottom_left = 0
    user.screenshot_folder = "/Users/Nat/Google Drive/Inbox"
    user.mode_indicator_show = 1
    # user.listening_timeout_minutes = 2
    user.mouse_wheel_horizontal_amount = 120
    user.mouse_hide_mouse_gui = true
    user.subtitles_show = false
    user.mouse_continuous_scroll_amount = 8
    user.mouse_enable_pop_stops_drag = false
    user.mouse_continuous_scroll_acceleration = 10
    #  here I am lowering the threshold for the maximum interval to detect doubleclick to try to avoid some annoying mouse click behavior (like non-registered clicks and weird little drags) I've seen in early 2025,  especially with zoom mouse. I think it probably has something to do with updates to the community repository.
    # user.double_pop_speed_maximum = 0.15
    tracking.zoom_live = false
    user.mode_indicator_x = 0.58
        # Show subtitles?
    user.subtitles_show = false
    # Screens on which to show subtitles:
    # "all" - all screens
    # "main" - main screen as configured in OS
    # "cursor" - screen containing mouse pointer
    # "focus" - screen containing active/focused window/app
    user.subtitles_screens = "main"
    # 100 px maximum subtitle font size
    user.subtitles_size = 50
    # White subtitle color
    user.subtitles_color = "ffffff"
    # Slightly dark subtitle outline
    user.subtitles_color_outline = "aaaaaa"
    # For each character in the subtitle, extend the timeout 50 ms
    user.subtitles_timeout_per_char = 50
    # 750 ms is the minimum time to display a subtitle
    user.subtitles_timeout_min = 750
    # 3 seconds is the maximum time to display a subtitle
    user.subtitles_timeout_max = 3000
    # Position subtitles at the bottom of the screen (93% from top)
    user.subtitles_y = 0.50