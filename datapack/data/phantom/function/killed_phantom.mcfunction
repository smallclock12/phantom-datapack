# player gains points from killing phantoms
advancement revoke @s only phantom:phantom_killed

# only perform the next steps if the points are enabled
execute unless score phantom/points_enabled Phantom matches 1 run return fail

execute as @s run tellraw @s "You gained a phantom point for killing a phantom!"
execute as @s run scoreboard players add @p PhantomPoints 1

