tag @s add raycaster

scoreboard players operation @s PhantomWardRaycast = block_raycast/limit Phantom

execute at @s anchored eyes positioned ^ ^ ^1 run function phantom:phantom_ward/search

tag @s remove raycaster
