# revoke advancements with cooldowns

# setup scores for players on cooldown
execute as @e[type=minecraft:player,tag=phantom_ward_cooldown] run scoreboard players operation @s PhantomWardCurrentUse = @s PhantomWorldTime
execute as @e[type=minecraft:player,tag=phantom_ward_cooldown] run scoreboard players operation @s PhantomWardCurrentUse -= @s PhantomWardLastUse

# revoke & remove tags
execute as @e[type=minecraft:player,tag=phantom_ward_cooldown] run execute if score @s PhantomWardCurrentUse >= phantom_ward/cooldown Phantom run advancement revoke @s only phantom:phantom_ward
execute as @e[type=minecraft:player,tag=phantom_ward_cooldown] run execute if score @s PhantomWardCurrentUse >= phantom_ward/cooldown Phantom run tag @s remove phantom_ward_cooldown
