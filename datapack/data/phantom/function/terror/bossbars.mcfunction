
# store health where we can compare it to another score
$scoreboard players set terror/$(id)/current_health Phantom 0
$execute store result score terror/$(id)/current_health Phantom run data get entity @s Health
$execute store result bossbar terror/$(id) value run data get entity @s Health

# ensure all players in range see this bossbar
$bossbar set terror/$(id) players @a[distance=..50]
