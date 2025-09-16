execute as @a[scores={PhantomSleep=24000..}] run scoreboard players add @p PhantomPoints 1
execute store result storage phantom:collect run.last int 1 run time query gametime
