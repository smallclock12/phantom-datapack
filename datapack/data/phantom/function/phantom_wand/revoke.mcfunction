# revoke advancements with cooldowns

# setup scores for players on cooldown
execute as @e[type=minecraft:player,tag=phantom_wand_cooldown] run scoreboard players operation @s PhantomWandCurrentUse = @s PhantomWorldTime
execute as @e[type=minecraft:player,tag=phantom_wand_cooldown] run scoreboard players operation @s PhantomWandCurrentUse -= @s PhantomWandLastUse

# revoke & remove tags
execute as @e[type=minecraft:player,tag=phantom_wand_cooldown] run execute if score @s PhantomWandCurrentUse >= phantom_wand/cooldown Phantom run advancement revoke @s only phantom:phantom_wand
execute as @e[type=minecraft:player,tag=phantom_wand_cooldown] run execute if score @s PhantomWandCurrentUse >= phantom_wand/cooldown Phantom run tag @s remove phantom_wand_cooldown
