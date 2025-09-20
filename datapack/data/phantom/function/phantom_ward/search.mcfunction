# Remove one from the raycast limit
scoreboard players remove @s PhantomWardRaycast 1

# Optional: display a particle
particle minecraft:flame

execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{phantom_ward:1b}}} run tellraw @s "yes"
execute if data block ~ ~1 ~ {components:{"minecraft:custom_data":{phantom_ward:1b}}} run tellraw @s "yes"

# If the raycast has not hit a wall, and the limit has not been reached, move the raycast forward and run the function again
execute if block ~ ~ ~ #minecraft:replaceable if score @s PhantomWardRaycast matches 1.. positioned ^ ^ ^1 run function phantom:phantom_ward/search
