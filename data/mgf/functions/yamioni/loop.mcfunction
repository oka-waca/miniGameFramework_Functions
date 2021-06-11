
#----------デス時------------------
execute as @a[tag=ingame,team=yamitousou,scores={yamideath=1..}] run team leave @s
gamemode spectator @a[tag=ingame,scores={yamideath=1..}]

scoreboard players set @a[tag=ingame,scores={yamideath=1..}] yamideath 0


#-------------timer--------------
execute positioned ~ ~ ~ run scoreboard players remove @e[name="Superdarkfish",limit=1,sort=nearest] yamilefttime 1
timer yamioni add -1


#-----------Gameover---------------
execute positioned ~ ~ ~ if entity @e[name="Superdarkfish",limit=1,sort=nearest,scores={yamilefttime = 0}] run gameover yamioni true
execute unless entity @a[team=yamitousou] run gameover yamioni true