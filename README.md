## Phantom Ward

- Players can collect phantom points by killing phantoms and staying awake
- Adds custom phantom ward item
  - Craftable with an end rod, a phantom membrane, a diamond block and 2 gold ingots
  - Custom model
  - Points are used as charges for the item
  - Right clicking while holding the item will cause all phantoms within 25 blocks of the player to take significant damage
  - 5 second cooldown implemented using scoreboards

#### To do / Fix
- Cooldown wont work after gametime exceeds int32 due to the lastuse being greater than current use
  - Could schedule a function to revoke the advancement instead of manual cooldown, would have to reset this for everyone on load aswell (even if offline)
