# what to do on our tick

execute if predicate phantom:should_check_stayed_awake run function phantom:stayed_awake

execute if predicate phantom:is_second run function phantom:phantom_ward/revoke
