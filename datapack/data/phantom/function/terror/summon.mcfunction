# fail if already active
execute if score terror/active Phantom matches 1 run return fail

function phantom:terror/terror_score_reset

playsound minecraft:entity.wither.death hostile @a[distance=..100]

summon minecraft:phantom ~ ~10 ~ {PersistenceRequired:true,ArmorItems:[{id:"netherite_helmet", components:{"minecraft:enchantments":{projectile_protection:5}}},{id:"netherite_chestplate", components:{"minecraft:enchantments": {projectile_protection:5,thorns:2}}},{id:"netherite_leggings", components:{"minecraft:enchantments":{projectile_protection:5}}},{id:"netherite_boots", components:{"minecraft:enchantments":{projectile_protection:5}}}],attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:max_health",base:400},{id:"minecraft:knockback_resistance", base:0.5},{id:"minecraft:attack_damage",base:8}],Size:24,Health:400,Tags:["terror","boss"]}

# setup bossbar
execute store result bossbar minecraft:terror value run data get entity @e[limit=1,tag=boss,tag=terror,type=minecraft:phantom] Health
scoreboard players set terror/active Phantom 1
