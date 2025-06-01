browser.host: gemini.google.com
mode: dictation
-

# The default key presses for a new paragraph in dictation mode will send the message in Gemini. This fixes that.
new paragraph:
    key(shift-enter)
    key(shift-enter)

settings():
    user.context_sensitive_dictation = 1