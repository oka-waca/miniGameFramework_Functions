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
team remove keioni
team remove keitousou

#scoreboard
scoreboard objectives setdisplay sidebar

scoreboard objectives remove keideath
scoreboard objectives remove keilefttime
scoreboard objectives remove constant

scoreboard objectives remove kei_total_tousou 
scoreboard objectives remove kei_captured
scoreboard objectives remove kei_cur_tousou
scoreboard objectives remove display


#Superfishfish
execute positioned ~ ~ ~ run kill @e[name="Superthieffish",limit=1,sort=nearest]




