playsound minecraft:entity.wither.death hostile @a[distance=..50]

$summon minecraft:phantom ~ ~5 ~ {PersistenceRequired:true,equipment:{head:{id:"netherite_helmet", components:{"minecraft:enchantments":{projectile_protection:5}}},chest:{id:"netherite_chestplate", components:{"minecraft:enchantments": {projectile_protection:5,thorns:2}}},legs:{id:"netherite_leggings", components:{"minecraft:enchantments":{projectile_protection:5}}},feet:{id:"netherite_boots", components:{"minecraft:enchantments":{projectile_protection:5}}}},attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:max_health",base:400},{id:"minecraft:knockback_resistance", base:0.5},{id:"minecraft:attack_damage",base:8}],size:24,Health:400,Tags:["terror","boss"], data:{id:$(id)}}

$bossbar add terror/$(id) "Terror"
$bossbar set terror/$(id) color red
$bossbar set terror/$(id) style notched_12
$bossbar set terror/$(id) max 400
$execute store result bossbar terror/$(id) value run data get entity @e[limit=1,nbt={data:{id:$(id)}}] Health
$bossbar set terror/$(id) players @a[distance=..50]

$scoreboard players set terror/$(id)/active Phantom 0
$scoreboard players set terror/$(id)/enraged Phantom 0
$scoreboard players set terror/$(id)/counter Phantom 0
$scoreboard players set terror/$(id)/ability_counter Phantom 0

$scoreboard players operation terror/$(id)/ability_cooldown Phantom = terror/default/ability_cooldown Phantom
$scoreboard players operation terror/$(id)/ability_telegraph Phantom = terror/default/ability_telegraph Phantom
$scoreboard players operation terror/$(id)/ability_spike_at Phantom = terror/default/ability_spike_at Phantom
$scoreboard players operation terror/$(id)/enrage_at Phantom = terror/default/enrage_at Phantom
$scoreboard players operation terror/$(id)/next Phantom = terror/next Phantom

$data modify storage terror active append value $(id)
