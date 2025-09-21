# distribute ticks to phantom ward

execute if predicate phantom:is_second as @e[type=minecraft:glow_item_frame,tag=phantom_ward] at @s run function phantom:phantom_ward/phantom_ward_tick
