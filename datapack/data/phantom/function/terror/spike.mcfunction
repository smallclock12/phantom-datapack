# only run if the next attack is 1
execute unless score terror/next Phantom matches 1 run return fail

execute unless score terror/ability_spike_at Phantom >= terror/counter Phantom run return fail

# we don't need to do anything if the counter is less than the cooldown
# execute unless score terror/ability_cooldown Phantom = terror/counter Phantom run return fail

# place our markers
execute at @a[distance=..50] run summon minecraft:marker ~ ~ ~ {Tags:["terror_attack_spike"]}

# telegraph attack
execute at @e[type=minecraft:marker,tag=terror_attack_spike] run particle minecraft:smoke ~ ~ ~ 1 2 1 0.01 300
particle minecraft:smoke ~ ~ ~ 2 2 2 0.01 200

# attack, the evoker fangs have a built in pause so this all happens in the same tick
execute as @e[type=minecraft:phantom,tag=boss,tag=terror] at @e[type=minecraft:marker,tag=terror_attack_spike] run summon minecraft:evoker_fangs ~ ~ ~ {attributes:[{id:"attack_damage", base:10}]}
execute as @e[type=minecraft:phantom,tag=boss,tag=terror] at @e[type=minecraft:marker,tag=terror_attack_spike] run summon minecraft:evoker_fangs ~-1 ~ ~ {attributes:[{id:"attack_damage", base:10}]}
execute as @e[type=minecraft:phantom,tag=boss,tag=terror] at @e[type=minecraft:marker,tag=terror_attack_spike] run summon minecraft:evoker_fangs ~1 ~ ~ {attributes:[{id:"attack_damage", base:10}]}
execute as @e[type=minecraft:phantom,tag=boss,tag=terror] at @e[type=minecraft:marker,tag=terror_attack_spike] run summon minecraft:evoker_fangs ~ ~ ~1 {attributes:[{id:"attack_damage", base:10}]}
execute as @e[type=minecraft:phantom,tag=boss,tag=terror] at @e[type=minecraft:marker,tag=terror_attack_spike] run summon minecraft:evoker_fangs ~ ~ ~-1 {attributes:[{id:"attack_damage", base:10}]}

kill @e[type=minecraft:marker,tag=terror_attack_spike]
