# fail if already active
execute if score terror/active Phantom matches 1 run return fail

# reset scoreboards for him
scoreboard players set terror/active Phantom 1
scoreboard players set terror/enraged Phantom 0
scoreboard players set terror/counter Phantom 0

# reset defaults
scoreboard players operation terror/ability_cooldown Phantom = terror/default/ability_cooldown Phantom
scoreboard players operation terror/ability_telegraph Phantom = terror/default/ability_telegraph Phantom
scoreboard players operation terror/ability_spike_at Phantom = terror/default/ability_spike_at Phantom
scoreboard players operation terror/enrage_at Phantom = terror/default/enrage_at Phantom

playsound minecraft:entity.wither.death hostile @a[distance=..100]

summon minecraft:phantom ~ ~10 ~ {PersistenceRequired:true,ArmorItems:[{id:"netherite_helmet", components:{"minecraft:enchantments":{projectile_protection:5}}},{id:"netherite_chestplate", components:{"minecraft:enchantments": {projectile_protection:5,thorns:2}}},{},{}],attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:max_health",base:460}],Size:24,Health:460,Tags:["terror","boss"]}

# setup bossbar
execute store result bossbar minecraft:terror value run data get entity @e[limit=1,tag=boss,tag=terror,type=minecraft:phantom] Health
