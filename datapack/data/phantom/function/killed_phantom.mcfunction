# player gains points from killing phantoms

execute as @s run tellraw @s "You gained a phantom point for killing a phantom!"
execute as @s run scoreboard players add @p PhantomPoints 1

advancement revoke @s only phantom:phantom_killed
