# player gains point for staying awake more than a day

execute as @a[scores={PhantomSleep=24000..}] run scoreboard players add @p PhantomPoints 1
execute as @a[scores={PhantomSleep=24000..}] run tellraw @s "You gained a phantom point for staying awake!"
