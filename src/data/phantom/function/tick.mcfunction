function phantom:schedule
execute if predicate phantom:should_collect run function phantom:collect

