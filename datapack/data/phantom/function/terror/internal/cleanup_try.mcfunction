
# try clean up for active_target

# remove the one we are processing so we don't retry it this tick
data remove storage terror active_for_cleanup[0]

# try find the target, if it exists do nothing, otherwise clean up
$execute store success score terror/$(active_target)/active Phantom run data get entity @e[nbt={data:{id:$(active_target)}},limit=1]

$execute if score terror/$(active_target)/active Phantom matches 1 run return fail

$bossbar remove terror/$(active_target)
$data remove storage terror active[$(active_index)]
$kill @e[type=minecraft:phantom,tag=terror,tag=!boss,tag=$(active_target)]
$kill @e[type=minecraft:marker,tag=terror,tag=$(active_target)]


