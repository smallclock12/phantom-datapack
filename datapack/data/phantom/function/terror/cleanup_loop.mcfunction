
# clean up loop

# set the target values and success of the data get against the terror storage
execute store success score terror/active_success Phantom store result storage terror active_target int 1 run data get storage terror active_for_cleanup[0]

# if nothing was found, break out of loop
execute if score terror/active_success Phantom matches 0 run return fail

# try clean up
execute store result storage terror active_index int 1 run scoreboard players get terror/active_index Phantom
function phantom:terror/cleanup_try with storage terror

# remove this target from cleanup job to move on to the next
scoreboard players add terror/active_index Phantom 1

# loop until we break out via a failed data lookup
function phantom:terror/cleanup_loop with storage terror
