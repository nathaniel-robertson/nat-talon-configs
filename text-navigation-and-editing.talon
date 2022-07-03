piper:
    insert(" | ")
    
dasher:
    insert(" - ")

em dash:
    insert("—")

em dasher:
    insert(" — ")

secure address:
    insert("https://")

emoji picker:
    key(ctrl-cmd-space)

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

(bevvy | drink | gulp):
    edit.extend_word_left()
    
taste:
    edit.extend_left()
    
snack:
    edit.extend_word_right()

nibble:
    edit.extend_right()

grab text:
    key(shift:down)
    mouse_click(0)
    key(shift:up)
    user.mouse_cancel_zoom_mouse()
    edit.copy()    
    sleep(500ms)
    mouse_click(0)
        
