$execute if score terror/$(id)/enraged Phantom matches 1 run return fail

# store health where we can compare it to another score
$execute store result score terror/$(id)/current_health Phantom run data get entity @s Health

$execute unless score terror/$(id)/current_health Phantom <= terror/$(id)/enrage_at Phantom run return fail

# enrage!!
$scoreboard players set terror/$(id)/enraged Phantom 1
$scoreboard players operation terror/$(id)/ability_cooldown Phantom = terror/enraged/ability_cooldown Phantom
$scoreboard players operation terror/$(id)/ability_telegraph Phantom = terror/enraged/ability_telegraph Phantom
$scoreboard players operation terror/$(id)/ability_spike_at Phantom = terror/enraged/ability_spike_at Phantom

particle minecraft:dust{color:[1,0,0],scale:2} ~ ~ ~ 2 2 2 1 250
playsound minecraft:entity.enderman.scream hostile @a[distance=..50] ~ ~ ~ 2 0
tellraw @a[distance=..50] {"text":"Terror has become enraged!","color":"red"}



