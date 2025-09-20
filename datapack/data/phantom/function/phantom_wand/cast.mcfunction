# cast phantom wand!

# tag targets
execute store success storage phantom:phantom_wand result byte 1 run tag @e[distance=..25,type=minecraft:phantom] add phantom_wand_target

# do things
playsound minecraft:entity.phantom.bite hostile @a[distance=..10]
execute at @e[distance=..25,type=minecraft:phantom] run summon minecraft:lightning_bolt
execute as @e[distance=..25,type=minecraft:phantom] run damage @s 20 minecraft:explosion

# if failed, tell player and exit without point deduction
execute if data storage phantom:phantom_wand {result: 0b} run tellraw @s "No phantoms were found to purge."
execute if data storage phantom:phantom_wand {result: 0b} run return fail

# point deduction
scoreboard players operation @s PhantomPoints -= phantom_wand/cost Phantom

