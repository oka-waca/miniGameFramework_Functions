

#制限時間カウントダウン
scoreboard players remove @e[name="SuperDeadfish",tag=permanent,limit=1,sort=nearest] wslefttime 1
scoreboard players operation "残り時間" wssidelefttime = @e[name="SuperDeadfish",tag=permanent,limit=1,sort=nearest] wslefttime


