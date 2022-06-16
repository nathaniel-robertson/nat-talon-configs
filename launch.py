from talon import app, actions
def app_launched():
    actions.user.mouse_guide_toggle()
    actions.user.mouse_toggle_zoom_mouse()

app.register("launch", app_launched)