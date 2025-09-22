
execute at @e[type=minecraft:phantom,tag=terror,tag=boss] run bossbar set minecraft:terror players @a[distance=..100]
scoreboard players add terror/counter Phantom 1

execute as @e[type=minecraft:phantom,tag=terror,tag=boss] run execute at @s run function #phantom:terror_attack

# early return unless we are resetting
execute unless score terror/counter Phantom >= terror/ability_cooldown Phantom run return fail

# reset counters
scoreboard players set terror/counter Phantom 0
execute store result score terror/next Phantom run random value 1..3

