# only run if the next attack is 1
execute unless score terror/next Phantom matches 1 run return fail

execute unless score terror/ability_spike_at Phantom >= terror/ability_counter Phantom run return fail

# evoker fangs have a built in pause before hurting the player so this all happens in the same tick

# place our markers
execute at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~ ~ ~ {Tags:["terror_attack_spike"]}
execute at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~0.8 ~ ~ {Tags:["terror_attack_spike"]}
execute at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~ ~ ~0.8 {Tags:["terror_attack_spike"]}
execute at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~-0.8 ~ ~ {Tags:["terror_attack_spike"]}
execute at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~ ~ ~-0.8 {Tags:["terror_attack_spike"]}

# telegraph attack
execute at @e[type=minecraft:marker,tag=terror_attack_spike] run particle minecraft:smoke ~ ~ ~ 0 1 0 0.01 100
particle minecraft:smoke ~ ~ ~ 2 2 2 0.01 200

# attack!
execute at @e[type=minecraft:marker,tag=terror_attack_spike] run summon minecraft:evoker_fangs ~ ~ ~

kill @e[type=minecraft:marker,tag=terror_attack_spike]
