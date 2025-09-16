tellraw @s "You don't have enough phantom points to use this ability!"
execute as @s run function phantom:phantom_ward/last_use with storage phantom:phantom_ward
