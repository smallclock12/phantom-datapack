# adds phantom points for every player that has stayed awake longer than a day

execute as @a[scores={PhantomSleep=24000..}] run scoreboard players add @p PhantomPoints 1
execute as @a[scores={PhantomSleep=24000..}] run tellraw @s "You gained a phantom point for staying awake!"
execute store result storage phantom:stayed_awake run.last int 1 run time query gametime
