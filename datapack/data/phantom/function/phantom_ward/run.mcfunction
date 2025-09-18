# cast phantom ward!

playsound minecraft:entity.phantom.bite hostile @a[distance=..10]

execute store success storage phantom:phantom_ward result byte 1 run effect give @e[distance=..25,type=minecraft:phantom] minecraft:wither infinite 31
execute at @e[distance=..25,type=minecraft:phantom] run summon minecraft:lightning_bolt

# ensure last use is set as this enables the cooldown
execute as @s run function phantom:phantom_ward/last_use with storage phantom:phantom_ward

# if failed, tell player and exit without point deduction
execute if data storage phantom:phantom_ward {result: 0b} run tellraw @s "No phantoms were found to purge."
execute if data storage phantom:phantom_ward {result: 0b} run return fail

# point deduction
scoreboard players operation @s PhantomPoints -= @s PhantomWardCost

