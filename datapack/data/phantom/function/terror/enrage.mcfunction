execute if score terror/enraged Phantom matches 1 run return fail

# store health where we can compare it to another score
execute as @e[tag=boss,tag=terror,type=minecraft:phantom] store result score terror/current_health Phantom run data get entity @s Health

execute unless score terror/current_health Phantom <= terror/enrage_at Phantom run return fail

# enrage!!
scoreboard players set terror/enraged Phantom 1
scoreboard players operation terror/ability_cooldown Phantom = terror/enraged/ability_cooldown Phantom
scoreboard players operation terror/ability_telegraph Phantom = terror/enraged/ability_telegraph Phantom
scoreboard players operation terror/ability_spike_at Phantom = terror/enraged/ability_spike_at Phantom

particle minecraft:dust{color:[1,0,0],scale:2} ~ ~ ~ 2 2 2 1 1000
playsound minecraft:entity.enderman.scream hostile @a[distance=..100] ~ ~ ~ 2 0
tellraw @a[distance=..100] {"text":"Terror has become enraged!","color":"red"}



