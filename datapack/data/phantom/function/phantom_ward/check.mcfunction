# check if player is able to cast phantom_ward

# update now store for comparisons
execute store result storage phantom:phantom_ward now int 1 run time query gametime

# setup player variables 
function phantom:phantom_ward/current_use with storage phantom:phantom_ward
scoreboard players operation @s PhantomWardCurrentUse -= @s PhantomWardLastUse

# execute!
execute if score @s PhantomWardCurrentUse > phantom_ward/cooldown Phantom unless score @s PhantomPoints < phantom_ward/cost Phantom as @s run function phantom:phantom_ward/run

# execute if player doesn't have enough phantom points
execute if score @s PhantomWardCurrentUse > phantom_ward/cooldown Phantom if score @s PhantomPoints < phantom_ward/cost Phantom run function phantom:phantom_ward/not_enough_points 

# revoke advancement so player can re-cast
advancement revoke @s only phantom:phantom_ward
