#gamerule
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule keepInventory false
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule spawnRadius 0
gamerule sendCommandFeedback false



#team
team add citizen "市民"
team modify citizen friendlyFire false
team modify citizen nametagVisibility never
team modify citizen color aqua

team add zombie "ゾンビ"
team modify zombie friendlyFire false
team modify zombie nametagVisibility hideForOtherTeams
team modify zombie color dark_red

team add standby "待機"
team modify standby friendlyFire false
team modify standby color black

team add obj "obj"



#scoreboard
scoreboard objectives add wsdeath deathCount "wsdeath"
scoreboard objectives add wslefttime dummy "残り時間"
scoreboard objectives add wssidelefttime dummy "ウォーキング死ぬ"
