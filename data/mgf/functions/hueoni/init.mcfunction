#----------initialize-----------------

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
team add tousou "逃走者"
team modify tousou friendlyFire false
team modify tousou nametagVisibility never
team modify tousou color aqua

team add oni "鬼"
team modify oni friendlyFire false
team modify oni nametagVisibility hideForOtherTeams
team modify oni color dark_red

team add standby "待機"
team modify standby friendlyFire false
team modify standby color black


#scoreboard
scoreboard objectives add huedeath deathCount "huedeath"
scoreboard objectives add huelefttime dummy "lefttime"
scoreboard objectives add constant dummy "constant"

#Superfishfish
#summon salmon ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CustomName:'{"text":"Superfishfish"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000,ShowParticles:0b}]}
summon salmon ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CustomName:'{"text":"Superfishfish"}'}


#--------------Start---------------
gameover hueoni false

tag @a add ingame
gamemode adventure @a


clear @a
effect clear @a
effect give @a[tag=ingame] minecraft:instant_health 1 100 true
effect give @a[tag=ingame] minecraft:saturation 1 100 true

#Timer
timer hueoni set 300
execute positioned ~ ~ ~ run scoreboard players set @e[name="Superfishfish",limit=1,sort=nearest] huelefttime 15
execute positioned ~ ~ ~ run scoreboard players set @e[name="Superfishfish",limit=1,sort=nearest] constant 20
execute positioned ~ ~ ~ run scoreboard players operation @e[name="Superfishfish",limit=1,sort=nearest] huelefttime *= @e[name="Superfishfish",limit=1,sort=nearest] constant

#team
team join oni @r[limit=1,tag=ingame]
team join tousou @a[tag=ingame,team=!oni]



#-----------Items----------------------
give @a[team=oni] diamond_sword{HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10000s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1092257965,-1028962230,-1254803632,-1794182346]}]} 1
replaceitem entity @a[team=oni] armor.head diamond_helmet{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=oni] armor.chest diamond_chestplate{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=oni] armor.legs diamond_leggings{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=oni] armor.feet diamond_boots{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

