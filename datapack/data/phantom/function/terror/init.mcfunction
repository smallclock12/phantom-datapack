# on reload, reset terror state

kill @e[type=minecraft:phantom,tag=terror]

scoreboard players set terror/id_counter Phantom 0
scoreboard players set terror/default/ability_cooldown Phantom 7
scoreboard players set terror/default/ability_telegraph Phantom 6
scoreboard players set terror/default/ability_spike_at Phantom 5
scoreboard players set terror/default/enrage_at Phantom 200
scoreboard players set terror/enraged/ability_cooldown Phantom 5
scoreboard players set terror/enraged/ability_telegraph Phantom 4
scoreboard players set terror/enraged/ability_spike_at Phantom 5
scoreboard players set terror/enraged/enrage_at Phantom 200

function phantom:terror/terror_score_reset

execute store result score terror/next Phantom run random value 1..3
bossbar add terror "Terror"
bossbar set terror color red
bossbar set minecraft:terror style notched_12
bossbar set minecraft:terror max 400
bossbar set minecraft:terror players test
