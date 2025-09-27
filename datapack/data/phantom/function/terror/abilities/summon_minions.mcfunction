# only run if the next attack is 2
$execute unless score terror/$(id)/next Phantom matches 2 run return fail

# we don't need to do anything if the counter is less than the cooldown
$execute unless score terror/$(id)/ability_telegraph Phantom <= terror/$(id)/ability_counter Phantom run return fail

# place our markers
$execute if score terror/$(id)/ability_telegraph Phantom = terror/$(id)/ability_counter Phantom at @a[distance=..50,gamemode=survival] run summon minecraft:marker ~ ~ ~ {Tags:["terror_attack_summon_minion","$(id)", "terror"]}

# telegraph
$execute at @e[type=minecraft:marker,tag=terror_attack_summon_minion,tag=$(id)] run particle minecraft:witch ~ ~2 ~ 0 -1 0 0.01 200
particle minecraft:witch ~ ~ ~ 2 2 2 0.01 20

# we don't need continue if the cooldown is not equal to the counter
$execute unless score terror/$(id)/ability_cooldown Phantom = terror/$(id)/ability_counter Phantom run return fail

$execute at @e[type=minecraft:marker,tag=terror_attack_summon_minion,tag=$(id)] run summon phantom ~ ~2 ~ {ArmorItems:[{id:"netherite_helmet"}],attributes:[{id:"minecraft:burning_time", base:0},{id:"scale", base:0.5},{id:"movement_speed", base: 4},{id:"max_health", base: 4}],Size:1,Tags:["terror","$(id)"]}
$execute at @e[type=minecraft:marker,tag=terror_attack_summon_minion,tag=$(id)] run summon phantom ~ ~2 ~ {ArmorItems:[{id:"netherite_helmet"}],attributes:[{id:"minecraft:burning_time", base:0},{id:"scale", base:0.5},{id:"movement_speed", base: 4},{id:"max_health", base: 4}],Size:1,Tags:["terror","$(id)"]}

$kill @e[type=minecraft:marker,tag=terror_attack_summon_minion,tag=$(id)]
