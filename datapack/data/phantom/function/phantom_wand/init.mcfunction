# setup tracking
scoreboard objectives add PhantomSleep minecraft.custom:minecraft.time_since_rest
scoreboard objectives add PhantomWandLastUse dummy
scoreboard objectives add PhantomWandCurrentUse dummy

# store defaults
scoreboard players set phantom_wand/cost Phantom 1
scoreboard players set phantom_wand/cooldown Phantom 100

# reset lastuse on reload
scoreboard players reset * PhantomWandLastUse
