# on reload, reset terror state

kill @e[type=minecraft:phantom,tag=terror]

scoreboard players set terror/default/ability_cooldown Phantom 8
scoreboard players set terror/default/ability_telegraph Phantom 7
scoreboard players set terror/default/ability_spike_at Phantom 4
scoreboard players set terror/default/enrage_at Phantom 160
scoreboard players set terror/enraged/ability_cooldown Phantom 6
scoreboard players set terror/enraged/ability_telegraph Phantom 5
scoreboard players set terror/enraged/ability_spike_at Phantom 5
scoreboard players set terror/enraged/enrage_at Phantom 160

scoreboard players set terror/active Phantom 0
scoreboard players set terror/enraged Phantom 0
scoreboard players set terror/counter Phantom 0

scoreboard players operation terror/ability_cooldown Phantom = terror/default/ability_cooldown Phantom
scoreboard players operation terror/ability_telegraph Phantom = terror/default/ability_telegraph Phantom
scoreboard players operation terror/ability_spike_at Phantom = terror/default/ability_spike_at Phantom
scoreboard players operation terror/enrage_at Phantom = terror/default/enrage_at Phantom

execute store result score terror/next Phantom run random value 1..3
bossbar add terror "Terror"
bossbar set terror color red
bossbar set minecraft:terror style notched_12
bossbar set minecraft:terror max 460
bossbar set minecraft:terror players test
