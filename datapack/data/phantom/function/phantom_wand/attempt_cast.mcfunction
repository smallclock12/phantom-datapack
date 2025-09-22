# check if player is able to cast phantom_wand

# setup player variables 
scoreboard players operation @s PhantomWandLastUse = @s PhantomWorldTime 
tag @s add phantom_wand_cooldown

# not enough points
execute if score @s PhantomPoints < phantom_wand/cost Phantom run return run tellraw @s "You don't have enough phantom points to use this ability!"

# cast!
execute unless score @s PhantomPoints < phantom_wand/cost Phantom as @s run function phantom:phantom_wand/cast

