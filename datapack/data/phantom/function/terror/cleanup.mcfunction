
# start clean up process

# take a copy of active set
data modify storage terror active_for_cleanup set from storage terror active
scoreboard players set terror/active_index Phantom 0

# start the loop over copied active set
function phantom:terror/cleanup_loop with storage terror

