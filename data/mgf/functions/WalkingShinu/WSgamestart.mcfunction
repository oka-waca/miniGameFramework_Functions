tag @a add ingame
gamemode adventure @a
difficulty hard
worldborder set 258

#obj設定
effect give @e[team=obj] minecraft:invisibility 6000 1 true
team modify obj nametagVisibility never


clear @a
effect clear @a
effect give @a[tag=ingame] minecraft:instant_health 1 100 true
effect give @a[tag=ingame] minecraft:saturation 1 100 true

#scoreboard
#制限時間
scoreboard players set @e[name="SuperDeadfish",tag=permanent,limit=1,sort=nearest] wslefttime 420
scoreboard players set @a[tag=ingame] wsdeath 0
scoreboard players set "残り時間" wssidelefttime 0
scoreboard objectives setdisplay sidebar wssidelefttime


team join citizen @a[tag=ingame]
spawnpoint @a[tag=ingame] 47 58 25


#Teleport
execute as @r[tag=spawn,limit=1] run tp @a[tag=ingame] @s
execute at @a[tag=ingame] as @a[tag=ingame] run tp @s ~ ~1.5 ~


#持ち物function
function waca:WalkingShinu/WSitem
