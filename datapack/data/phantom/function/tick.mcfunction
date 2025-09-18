# what to do on our tick, triggered every 1000t

function phantom:schedule
execute if predicate phantom:should_check_stayed_awake run function phantom:stayed_awake

