execute store result storage phantom:phantom_ward now int 1 run time query gametime

execute as @s run function phantom:phantom_ward/current_use with storage phantom:phantom_ward
execute as @s run scoreboard players set @s PhantomWardCooldown 100
execute as @s run scoreboard players set @s PhantomWardCost 1
execute as @s run scoreboard players operation @s PhantomWardCurrentUse -= @s PhantomWardLastUse

execute if score @s PhantomWardCurrentUse > @s PhantomWardCooldown unless score @s PhantomPoints < @s PhantomWardCost as @s run function phantom:phantom_ward/run

execute if score @s PhantomWardCurrentUse > @s PhantomWardCooldown if score @s PhantomPoints < @s PhantomWardCost run function phantom:phantom_ward/not_enough_points 

advancement revoke @s only phantom:phantom_ward
