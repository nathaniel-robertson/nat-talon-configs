from talon import Context, actions, Module

mod = Module()

@mod.action_class
class NatCustomFunctions:
    def hunt_and_enter(text: str,occurrence: int = 0):
        """Searches for text in browser, exits the search box, presses enter to activate link result)"""
        actions.key("cmd-f")
        # actions.sleep("200ms")
        actions.key("backspace")
        actions.insert("keyword_clear")
        actions.key("cmd-a")
        actions.key("backspace")
        # actions.sleep("200ms")
        actions.insert(text)
        actions.sleep("200ms")
        counter = 0
        while counter < occurrence - 1:
            # actions.sleep("200ms")
            actions.key("enter")
            counter += 1
        # actions.sleep("200ms")
        actions.key("escape")
        # actions.sleep("200ms")
        actions.key("enter")