# go left and right
# Dank and Dabby

# use word "slurp" for selecting text?
# could use some short words for clearing words as well

dink:
    edit.right()

donk:
    edit.left()

scrap:
    key(backspace)

# could be longer if needed
poke:
    key(delete)

jump:
    edit.up()

slide:
    edit.down()

# push, pop, step, stone: Emily Shea
# https://github.com/2shea/talon_starter_pack/blob/9e8b5204bc56a51e4e5d752dc3362e3f2d3bb249/text/generic_editor.py

push: 
    key(cmd-right)
    
pop:
    key(cmd-left)
        
step:
    key(alt-right)
            
stone:
    key(alt-left)
                
# Text Selection

poach:
    edit.select_word()

swill:
    edit.extend_word_left()
    
taste:
    edit.extend_left()
    
snack:
    edit.extend_word_right()

nibble:
    edit.extend_right()