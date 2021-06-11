clear @a
effect clear @e
tag @a remove ingame
gamemode adventure @a
gamemode creative wacataro
gamemode creative zaki92
gamemode creative Hagechqn
effect give @a minecraft:saturation 1 100 true
effect give @a minecraft:instant_health 1 100 true


#team
team join standby @a
team remove oni
team remove tousou

#scoreboard
scoreboard objectives remove huedeath
scoreboard objectives remove huelefttime
scoreboard objectives remove constant


#Superfishfish
execute positioned ~ ~ ~ run kill @e[name="Superfishfish",limit=1,sort=nearest]




