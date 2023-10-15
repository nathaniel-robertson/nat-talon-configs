# This file is responsible for some startup actions
# Such as turning on zoom mouse and turning off the mouse cross guide 

from talon import app, actions
def app_launched():
    actions.user.mouse_guide_toggle()
    actions.tracking.control_zoom_toggle()

app.register("launch", app_launched)