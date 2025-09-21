# initialisation

# player specific storage
scoreboard objectives add PhantomWorldTime minecraft.custom:minecraft.total_world_time
scoreboard objectives add PhantomPoints dummy
scoreboard objectives add Phantom dummy
scoreboard players set block_raycast/limit Phantom 10

function #phantom:init
