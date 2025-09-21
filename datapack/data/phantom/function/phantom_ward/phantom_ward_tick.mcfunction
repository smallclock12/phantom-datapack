# executes as the phantom_ward

particle minecraft:witch ~ ~ ~ 2 2 2 1 20
execute as @e[type=minecraft:phantom,distance=..25] run effect give @s minecraft:wither 4 31
execute as @e[type=minecraft:player,distance=..25] run effect give @s minecraft:resistance 3 2
