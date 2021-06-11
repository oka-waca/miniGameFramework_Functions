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
team add yamitousou "逃走者"
team modify yamitousou friendlyFire false
team modify yamitousou nametagVisibility never
team modify yamitousou color aqua

team add yamioni "鬼"
team modify yamioni friendlyFire false
team modify yamioni nametagVisibility hideForOtherTeams
team modify yamioni color dark_red

team add standby "待機"
team modify standby friendlyFire false
team modify standby color black


#scoreboard
scoreboard objectives add yamideath deathCount "yamideath"
scoreboard objectives add yamilefttime dummy "lefttime"
scoreboard objectives add constant dummy "constant"

#Superdarkfish
#summon salmon ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CustomName:'{"text":"Superdarkfish"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000,ShowParticles:0b}]}
summon salmon ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CustomName:'{"text":"Superdarkfish"}'}


#--------------Start---------------
gameover yamioni false

tag @a add ingame
gamemode adventure @a


clear @a
effect clear @a
effect give @a[tag=ingame] minecraft:instant_health 1 100 true
effect give @a[tag=ingame] minecraft:saturation 1 100 true

#Timer
timer yamioni set 300
execute positioned ~ ~ ~ run scoreboard players set @e[name="Superdarkfish",limit=1,sort=nearest] yamilefttime 15
execute positioned ~ ~ ~ run scoreboard players set @e[name="Superdarkfish",limit=1,sort=nearest] constant 20
execute positioned ~ ~ ~ run scoreboard players operation @e[name="Superdarkfish",limit=1,sort=nearest] yamilefttime *= @e[name="Superdarkfish",limit=1,sort=nearest] constant

#team
team join yamioni @r[limit=1,tag=ingame]
team join yamitousou @a[tag=ingame,team=!yamioni]



#-----------Items----------------------
give @a[team=yamioni] diamond_sword{HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10000s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1092257965,-1028962230,-1254803632,-1794182346]}]} 1
replaceitem entity @a[team=yamioni] armor.head diamond_helmet{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=yamioni] armor.chest diamond_chestplate{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=yamioni] armor.legs diamond_leggings{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=yamioni] armor.feet diamond_boots{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

effect give @a[team=yamioni] minecraft:blindness 100000 1 true