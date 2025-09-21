# executes as the phantom_ward

particle minecraft:witch ~ ~ ~ 20 20 20 1 100
execute as @e[type=minecraft:phantom,distance=..20] run effect give @s minecraft:wither 4 31
execute as @e[type=minecraft:player,distance=..20] run effect give @s minecraft:resistance 3 2
