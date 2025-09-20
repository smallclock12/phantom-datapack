# initialisation

# player specific storage
scoreboard objectives add PhantomSleep minecraft.custom:minecraft.time_since_rest
scoreboard objectives add PhantomWorldTime minecraft.custom:minecraft.total_world_time
scoreboard objectives add PhantomPoints dummy
scoreboard objectives add PhantomWandLastUse dummy
scoreboard objectives add PhantomWandCurrentUse dummy
scoreboard objectives add PhantomWardRaycast dummy

# storage for static comparison data
scoreboard objectives add Phantom dummy
scoreboard players set block_raycast/limit Phantom 10
scoreboard players set phantom_wand/cost Phantom 1
scoreboard players set phantom_wand/cooldown Phantom 100

# reset lastuse on reload
scoreboard players reset * PhantomWandLastUse
