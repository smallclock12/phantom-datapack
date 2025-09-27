
execute at @e[type=minecraft:phantom,tag=terror,tag=boss] run bossbar set minecraft:terror players @a[distance=..100]

# set counters!
scoreboard players add terror/counter Phantom 1
scoreboard players operation terror/ability_counter Phantom = terror/counter Phantom
scoreboard players operation terror/ability_counter Phantom %= terror/ability_cooldown Phantom
scoreboard players add terror/ability_counter Phantom 1

execute if score terror/ability_counter Phantom matches 1 store result score terror/next Phantom run random value 1..3

execute as @e[type=minecraft:phantom,tag=terror,tag=boss] run execute at @s run function #phantom:terror_ability

