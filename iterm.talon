app: iterm2
-

# dig:
#     insert("dig")
#     key(space)

# bash command piping
piper:
    insert(" | ")

# reverse-i-search
reverse eye [search]:
    key(ctrl-r)

clear line:
    key(ctrl-u)

# Override of defaults knausj. This does not work right now. Manually pressing the keys definitely does work. Saying "alt delete" does work so I'm not sure what's going on here.
clear word:
    key(alt-delete)

# WP CLI

wordpress user list:
    insert("wp user list")
    key(enter)
    
wordpress plugin list:
    insert("wp plugin list")
    key(enter)
    
[wordpress] breeze clear cache:
    insert("wp breeze purge --cache=all")
    key(enter)

wordpress set me to editor [role]:
    insert('wp user set-role nrobertson editor; wp user set-role "Nat Robertson" editor')
    key(enter)

ward press sent me to administrator [role]:
    insert('wp user set-role nrobertson administrator; wp user set-role "Nat Robertson" administrator')
    key(enter)