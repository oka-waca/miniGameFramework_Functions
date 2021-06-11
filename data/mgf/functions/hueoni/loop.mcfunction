
#----------デス時------------------
execute as @a[tag=ingame,team=tousou,scores={huedeath=1..}] run team join oni @s

#Items
give @a[team=oni,scores={huedeath=1..}] diamond_sword{HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10000s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1092257965,-1028962230,-1254803632,-1794182346]}]} 1
replaceitem entity @a[team=oni,scores={huedeath=1..}] armor.head diamond_helmet{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=oni,scores={huedeath=1..}] armor.chest diamond_chestplate{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=oni,scores={huedeath=1..}] armor.legs diamond_leggings{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[team=oni,scores={huedeath=1..}] armor.feet diamond_boots{HideFlags:15,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

scoreboard players set @a[tag=ingame,scores={huedeath=1..}] huedeath 0


#-------------timer--------------
execute positioned ~ ~ ~ run scoreboard players remove @e[name="Superfishfish",limit=1,sort=nearest] huelefttime 1
timer hueoni add -1


#-----------Gameover---------------
execute positioned ~ ~ ~ if entity @e[name="Superfishfish",limit=1,sort=nearest,scores={huelefttime = 0}] run gameover hueoni true
execute unless entity @a[team=tousou] run gameover hueoni true