# initialisation

# player specific storage
scoreboard objectives add PhantomSleep minecraft.custom:minecraft.time_since_rest
scoreboard objectives add PhantomWorldTime minecraft.custom:minecraft.total_world_time
scoreboard objectives add PhantomPoints dummy
scoreboard objectives add PhantomWardLastUse dummy
scoreboard objectives add PhantomWardCurrentUse dummy

# storage for static comparison data
scoreboard objectives add Phantom dummy
scoreboard players set phantom_ward/cost Phantom 1
scoreboard players set phantom_ward/cooldown Phantom 100

# reset lastuse on reload
scoreboard players reset * PhantomWardLastUse
