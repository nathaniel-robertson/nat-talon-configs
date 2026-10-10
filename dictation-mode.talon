mode: dictation
-

# can we do insert() and user.dication_insert() in the same command? Would that fuck anything up?
piper:
    user.dictation_insert(" | ")
    
dasher:
    user.dictation_insert(" - ")

em dash:
    user.dictation_insert("—")

em dasher:
    user.dictation_insert(" — ")

angler:
    user.dictation_insert(" > ")

(spamma|spamuh):
    user.dictation_insert(", ")

ellipses|ominous:
    user.dictation_insert("…")

zoom cancel:
    tracking.zoom_cancel()

bang:
    user.dictation_insert("!")

caution mark|caution murk|caution merk|portion mark:
    user.dictation_insert("?")

karma|coma|kama|gamma|comma|comment:
    user.dictation_insert(",")

prod|pretty good:
    user.dictation_insert(".")

you paragraph|he paragraph:
    user.dictation_insert("\n\n") 

# Copied from abbreviate.talon in the talon community repository. Added a space prior to the abbreviation expansion so it plays better with dictation mode.
(abbreviate | abreviate | brief) {user.abbreviation}: " {abbreviation}"