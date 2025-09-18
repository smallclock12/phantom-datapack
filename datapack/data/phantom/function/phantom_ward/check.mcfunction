# check if player is able to cast phantom_ward

# update now store for comparisons
execute store result storage phantom:phantom_ward now int 1 run time query gametime

# setup player variables 
scoreboard players set @s PhantomWardCost 1
scoreboard players set @s PhantomWardCooldown 100
function phantom:phantom_ward/current_use with storage phantom:phantom_ward
scoreboard players operation @s PhantomWardCurrentUse -= @s PhantomWardLastUse

# execute!
execute if score @s PhantomWardCurrentUse > @s PhantomWardCooldown unless score @s PhantomPoints < @s PhantomWardCost as @s run function phantom:phantom_ward/run

# execute if player doesn't have enough phantom points
execute if score @s PhantomWardCurrentUse > @s PhantomWardCooldown if score @s PhantomPoints < @s PhantomWardCost run function phantom:phantom_ward/not_enough_points 

# revoke advancement so player can re-cast
advancement revoke @s only phantom:phantom_ward
