# on reload, reset terror state

kill @e[type=minecraft:phantom,tag=terror]
scoreboard players set terror/active Phantom 0
scoreboard players set terror/counter Phantom 0
scoreboard players set terror/ability_cooldown Phantom 8
scoreboard players set terror/ability_telegraph Phantom 7
scoreboard players set terror/ability_spike_at Phantom 4
execute store result score terror/next Phantom run random value 1..3
bossbar add terror "Terror"
bossbar set terror color red
bossbar set minecraft:terror style notched_12
bossbar set minecraft:terror max 460
bossbar set minecraft:terror players test


