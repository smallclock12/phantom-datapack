# player gains point for staying awake more than a day
#
# only perform the next steps if the points are enabled
execute unless score phantom/points_enabled Phantom matches 1 run return fail

execute as @a[scores={PhantomSleep=24000..}] run scoreboard players add @p PhantomPoints 1
execute as @a[scores={PhantomSleep=24000..}] run tellraw @s "You gained a phantom point for staying awake!"
