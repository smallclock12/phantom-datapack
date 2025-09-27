# on reload, reset terror state

kill @e[type=minecraft:phantom,tag=terror]
kill @e[type=minecraft:marker,tag=terror]

scoreboard players set terror/id_counter Phantom 0
scoreboard players set terror/default/ability_cooldown Phantom 6
scoreboard players set terror/default/ability_telegraph Phantom 5
scoreboard players set terror/default/ability_spike_at Phantom 3
scoreboard players set terror/default/enrage_at Phantom 200
scoreboard players set terror/enraged/ability_cooldown Phantom 4
scoreboard players set terror/enraged/ability_telegraph Phantom 3
scoreboard players set terror/enraged/ability_spike_at Phantom 4
scoreboard players set terror/enraged/enrage_at Phantom 200

function phantom:terror/score_reset

execute store result score terror/next Phantom run random value 1..3

