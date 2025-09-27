execute if predicate phantom:is_second as @e[type=minecraft:phantom,tag=terror,tag=boss] run execute at @s run function phantom:terror/scoped {function: "boss_tick"}

# set bossbars
execute as @e[tag=boss,tag=terror,type=minecraft:phantom] run execute at @s run function phantom:terror/scoped {function:"bossbars"}

execute if predicate phantom:is_second run function phantom:terror/cleanup
