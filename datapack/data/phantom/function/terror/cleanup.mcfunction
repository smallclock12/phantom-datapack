bossbar set minecraft:terror players test
scoreboard players set terror/active Phantom 0
scoreboard players set terror/enraged Phantom 0
scoreboard players set terror/counter Phantom 0

# kill all offspring
kill @e[type=minecraft:phantom,tag=terror]

