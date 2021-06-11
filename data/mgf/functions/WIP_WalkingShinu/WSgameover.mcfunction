
clear @a
effect clear @e
tag @a remove ingame
gamemode adventure @a
gamemode creative wacataro
gamemode creative zaki92
gamemode creative Hagechqn
team empty citizen
team empty zombie
effect give @a minecraft:saturation 1 100 true
effect give @a minecraft:instant_health 1 100 true

team join standby @a

team modify obj nametagVisibility always
kill @e[type=!minecraft:player,tag=!permanent,tag=tobedeleted]
scoreboard objectives setdisplay sidebar


#待機場所
spawnpoint @a -4 11 -25
tp @a -4 11 -25


