
#デス時
execute as @a[tag=ingame,scores={wsdeath=1..}] run gamemode spectator @s
team leave @a[tag=ingame,scores={wsdeath=1..}]
team join zombie @a[tag=ingame,scores={wsdeath=1..}]
scoreboard players reset @a[tag=ingame,scores={wsdeath=1..}] wsdeath