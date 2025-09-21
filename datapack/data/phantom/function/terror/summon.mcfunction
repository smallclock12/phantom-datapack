scoreboard players set terror/active Phantom 1

playsound minecraft:entity.wither.death hostile @a[distance=..100]

summon minecraft:phantom ~ ~10 ~ {PersistenceRequired:true,ArmorItems:[{id:"netherite_helmet"},{id:"netherite_chestplate", components:{"minecraft:enchantments": {projectile_protection:5}}},{},{}],attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:max_health",base:460}],Size:24,Health:460,Tags:["terror","boss"]}

execute store result bossbar minecraft:terror value run data get entity @e[limit=1,tag=boss,tag=terror,type=minecraft:phantom] Health
