execute if score terror/active Phantom matches 1 if predicate phantom:is_second run function phantom:terror/terror_tick

# store health where we can compare it to another score
scoreboard players set terror/current_health Phantom 0
execute as @e[tag=boss,tag=terror,type=minecraft:phantom] store result score terror/current_health Phantom run data get entity @s Health
execute as @e[tag=boss,tag=terror,type=minecraft:phantom] store result bossbar minecraft:terror value run data get entity @s Health

# clean up if health is 0
execute if score terror/current_health Phantom matches 0 if score terror/active Phantom matches 1 run return run function phantom:terror/cleanup
