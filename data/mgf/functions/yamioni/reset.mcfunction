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
team remove yamioni
team remove yamitousou

#scoreboard
scoreboard objectives remove yamideath
scoreboard objectives remove yamilefttime
scoreboard objectives remove constant


#Superfishfish
execute positioned ~ ~ ~ run kill @e[name="Superdarkfish",limit=1,sort=nearest]




