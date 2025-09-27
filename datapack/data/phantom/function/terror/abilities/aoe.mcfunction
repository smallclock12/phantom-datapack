# only run if the next attack is 3
execute unless score terror/next Phantom matches 3 run return fail

# we don't need to do anything if the counter is less than the cooldown
execute unless score terror/ability_telegraph Phantom <= terror/counter Phantom run return fail

# place our markers
execute if score terror/ability_telegraph Phantom = terror/ability_counter Phantom at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~ ~ ~ {Tags:["terror_attack_aoe"]}

# telegraph
execute at @e[type=minecraft:marker,tag=terror_attack_aoe] run particle minecraft:cloud ~ ~ ~ 3 1 3 0.01 200
particle minecraft:cloud ~ ~ ~ 2 2 2 0.01 150

# we don't need continue if the cooldown is not equal to the counter
execute unless score terror/ability_cooldown Phantom = terror/ability_counter Phantom run return fail

playsound minecraft:entity.phantom.death hostile @a[distance=..50]
execute at @e[type=minecraft:marker,limit=1,tag=terror_attack_aoe] run summon minecraft:area_effect_cloud ~ ~ ~ {potion_contents:{custom_effects:[{duration:100, id:"darkness"},{duration:100,id:"wither",amplifier:4}]},Radius:6.5,Duration:120}

kill @e[type=minecraft:marker,tag=terror_attack_aoe]
