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

# allows for reliable insertion of digits in dictation mode
numb <number>:
    user.dictation_insert("{number}")

