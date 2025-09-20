# check if player is able to cast phantom_ward

# setup player variables 
scoreboard players operation @s PhantomWardLastUse = @s PhantomWorldTime 
tag @s add phantom_ward_cooldown

# not enough points
execute if score @s PhantomPoints < phantom_ward/cost Phantom run tellraw @s "You don't have enough phantom points to use this ability!"

# cast!
execute unless score @s PhantomPoints < phantom_ward/cost Phantom as @s run function phantom:phantom_ward/cast

