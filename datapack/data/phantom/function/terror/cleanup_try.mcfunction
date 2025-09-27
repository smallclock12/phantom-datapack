
# try clean up for active_target

data remove storage terror active_for_cleanup[0]

$execute store success score terror/$(active_target)/active Phantom run data get entity @e[nbt={data:{id:$(active_target)}},limit=1]

# target exists, nothing to do
$execute if score terror/$(active_target)/active Phantom matches 1 run return fail

# if not found, clean up
$bossbar remove terror/$(active_target)
$data remove storage terror active[$(active_index)]
$kill @e[type=minecraft:phantom,tag=terror,tag=!boss,tag=$(active_target)]
$kill @e[type=minecraft:marker,tag=terror,tag=$(active_target)]


