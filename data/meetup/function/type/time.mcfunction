#Made By Fan_Fan_tom
#time 1s
#中途加入遊戲
team join waiting @a[team=]
gamemode spectator @a[team=waiting]
team join spec @a[team=waiting]


#中心點&擊殺數
execute as @a unless score @s kill_list matches -2147483648..2147483647 run scoreboard players set @s kill_list 0
#取得中心點
execute as @e[type=marker,tag=first_set] store result score @s pos_x run data get entity @s Pos[0]
execute as @e[type=marker,tag=first_set] store result score @s pos_z run data get entity @s Pos[2]
execute as @a at @s unless score @s timer.no_clean matches -2147483648..2147483647 run title @s actionbar ["",{"text":"\u4e2d\u5fc3\u9ede (","color":"yellow"},{"score":{"name":"@e[type=minecraft:marker,tag=first_set,sort=nearest,limit=1]","objective":"pos_x"},"color":"green"},{"text":" , ","color":"yellow"},{"score":{"name":"@e[type=minecraft:marker,tag=first_set,sort=nearest,limit=1]","objective":"pos_z"},"color":"green"},{"text":") \u64ca\u6bba\u6578 ","color":"yellow"},{"score":{"name":"@s","objective":"kill_list"},"color":"green"}]
#死亡箱60秒後自動清除
execute as @e[type=marker,tag=death_chest] at @s run function meetup:type/work/deathbox/countdown

#地洞模式 限高 45 格
execute if score mode.hole command matches 2 as @a at @s if entity @s[y=46,dy=300,gamemode=survival] run function meetup:type/work/player/hole/height_limit

#縮圈 / function meetup:type/start/start ==> function meetup:type/work/border/first_start ==> 控制縮圈系統
team join yellow 遊戲時間
scoreboard players add 遊戲時間 list 1
execute if score border_time border_time matches 1.. run scoreboard players remove border_time border_time 1
execute store result bossbar minecraft:border_time value run scoreboard players get border_time border_time
#display
bossbar set border_time players @a
execute unless score ing border_time matches 1.. run bossbar set border_time color yellow
execute unless score ing border_time matches 1.. run bossbar set border_time name ["",{"text":"距離下次縮圈還剩 "},{"score":{"name":"border_time","objective":"border_time"},"bold":true,"underlined":true,"color":"green"},{"text":" 秒"}]
execute if score ing border_time matches 1.. run bossbar set border_time color red
execute if score ing border_time matches 1.. run bossbar set border_time name ["",{"text":"縮圈完畢還剩 "},{"score":{"name":"border_time","objective":"border_time"},"bold":true,"underlined":true,"color":"green"},{"text":" 秒"}]

#Loop
execute if score status command matches 2 run schedule function meetup:type/time 1s