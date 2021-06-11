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
team add keitousou "逃走者"
team modify keitousou friendlyFire false
team modify keitousou nametagVisibility never
team modify keitousou color aqua

team add keioni "鬼"
team modify keioni friendlyFire false
team modify keioni nametagVisibility hideForOtherTeams
team modify keioni color dark_red

team add standby "待機"
team modify standby friendlyFire false
team modify standby color black


#scoreboard
scoreboard objectives add keideath deathCount "keideath"
scoreboard objectives add keilefttime dummy "lefttime"
scoreboard objectives add constant dummy "constant"

scoreboard objectives add kei_total_tousou dummy "kei_total_tousou"
scoreboard objectives add kei_cur_tousou dummy "kei_cur_tousou"
scoreboard objectives add kei_captured dummy "kei_captured"

scoreboard objectives add display dummy "ケイドロ"

scoreboard objectives setdisplay sidebar display


#Superthieffish
#summon salmon ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CustomName:'{"text":"Superthieffish"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000,ShowParticles:0b}]}
summon salmon ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CustomName:'{"text":"Superthieffish"}'}


#--------------Start---------------
gameover keidoro false

tag @a add ingame
gamemode adventure @a


clear @a
effect clear @a
effect give @a[tag=ingame] minecraft:instant_health 1 100 true
effect give @a[tag=ingame] minecraft:saturation 1 100 true

#Timer
timer keidoro set 300
execute positioned ~ ~ ~ run scoreboard players set @e[name="Superthieffish",limit=1,sort=nearest] keilefttime 15
execute positioned ~ ~ ~ run scoreboard players set @e[name="Superthieffish",limit=1,sort=nearest] constant 20
execute positioned ~ ~ ~ run scoreboard players operation @e[name="Superthieffish",limit=1,sort=nearest] keilefttime *= @e[name="Superthieffish",limit=1,sort=nearest] constant

#team
team join keioni @r[limit=1,tag=ingame]
team join keitousou @a[tag=ingame,team=!keioni]

execute positioned ~ ~ ~ store success score @e[name="Superthieffish",limit=1,sort=nearest] kei_total_tousou if entity @a[team=keitousou]

#-----------Items----------------------
give @a[team=keioni] diamond_sword{HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10000s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1092257965,-1028962230,-1254803632,-1794182346]}]} 1
replaceitem entity @a[team=keioni] armor.head diamond_helmet{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=keioni] armor.chest diamond_chestplate{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=keioni] armor.legs diamond_leggings{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=keioni] armor.feet diamond_boots{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

