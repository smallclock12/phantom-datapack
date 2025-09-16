playsound minecraft:entity.phantom.bite hostile @a[distance=..11]
summon minecraft:lightning_bolt
summon minecraft:phantom ~10 ~10 ~
summon minecraft:phantom ~ ~10 ~10
execute as @s run function phantom:phantom_ward/last_use with storage phantom:phantom_ward
scoreboard players operation @s PhantomPoints -= @s PhantomWardCost

