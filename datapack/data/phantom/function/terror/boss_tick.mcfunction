# set counters!
$scoreboard players add terror/$(id)/counter Phantom 1
$scoreboard players operation terror/$(id)/ability_counter Phantom = terror/$(id)/counter Phantom
$scoreboard players operation terror/$(id)/ability_counter Phantom %= terror/$(id)/ability_cooldown Phantom
$scoreboard players add terror/$(id)/ability_counter Phantom 1

# roll next ability
$execute if score terror/$(id)/ability_counter Phantom matches 1 store result score terror/$(id)/next Phantom run random value 1..3

# execute abilities
$execute as @s at @s run function #phantom:terror_ability {id:$(id)}

