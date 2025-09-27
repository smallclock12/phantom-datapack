# fail if already active
execute if score terror/active Phantom matches 1 run return fail

function phantom:terror/terror_score_reset

scoreboard players add terror/id_counter Phantom 1
execute store result storage terror next_id int 1 run scoreboard players get terror/id_counter Phantom 

playsound minecraft:entity.wither.death hostile @a[distance=..100]

summon minecraft:phantom ~ ~5 ~ {PersistenceRequired:true,equipment:{head:{id:"netherite_helmet", components:{"minecraft:enchantments":{projectile_protection:5}}},chest:{id:"netherite_chestplate", components:{"minecraft:enchantments": {projectile_protection:5,thorns:2}}},legs:{id:"netherite_leggings", components:{"minecraft:enchantments":{projectile_protection:5}}},boots:{id:"netherite_boots", components:{"minecraft:enchantments":{projectile_protection:5}}}},attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:max_health",base:400},{id:"minecraft:knockback_resistance", base:0.5},{id:"minecraft:attack_damage",base:8}],size:24,Health:400,Tags:["terror","boss"]}

# setup bossbar
execute store result bossbar minecraft:terror value run data get entity @e[limit=1,tag=boss,tag=terror,type=minecraft:phantom] Health
scoreboard players set terror/active Phantom 1
