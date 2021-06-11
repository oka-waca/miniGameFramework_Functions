

#-------------timer--------------
execute positioned ~ ~ ~ run scoreboard players remove @e[name="Superthieffish",limit=1,sort=nearest] keilefttime 1
timer keidoro add -1

#---------score----------------
scoreboard players operation @e[name="Superthieffish",limit=1,sort=nearest] kei_cur_tousou = @e[name="Superthieffish",limit=1,sort=nearest] kei_total_tousou
scoreboard players operation @e[name="Superthieffish",limit=1,sort=nearest] kei_cur_tousou -= @e[name="Superthieffish",limit=1,sort=nearest] kei_captured


scoreboard players operation 逮捕済み display = @e[name="Superthieffish",limit=1,sort=nearest] kei_captured
scoreboard players operation 逃走中 display = @e[name="Superthieffish",limit=1,sort=nearest] kei_cur_tousou


#-----------Gameover---------------
execute positioned ~ ~ ~ if entity @e[name="Superthieffish",limit=1,sort=nearest,scores={keilefttime = 0}] run gameover keidoro true
execute positioned ~ ~ ~ if entity @e[name="Superthieffish",limit=1,sort=nearest,scores={kei_cur_tousou = 0}] run gameover keidoro true
