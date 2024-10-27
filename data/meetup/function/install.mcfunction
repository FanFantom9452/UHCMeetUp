#Made By Fan_Fan_tom
tag @s add admin
#設定初始物資
execute unless data storage meetup:items Inventory run function meetup:type/item/game_default_items

schedule clear meetup:type/fighting
schedule clear meetup:type/time

scoreboard players set status command 1
function meetup:type/tick

#auto start
scoreboard players set auto.mode.timer command 60


kill @e[type=marker,tag=first_set]
execute align xyz run summon marker ~ ~ ~ {Tags:["first_set"]}
execute align xyz run function meetup:type/work/gamerule
execute align xyz run fill ~15 300 ~15 ~-15 305 ~-15 barrier
execute align xyz run fill ~14 301 ~14 ~-14 305 ~-14 air
execute align xyz run tp @a ~ 301.5 ~

scoreboard objectives add HP health {"text":"\u2764","color":"red"}
scoreboard objectives setdisplay list HP
scoreboard objectives setdisplay below_name HP


scoreboard objectives add death deathCount "死亡處理"
scoreboard objectives add kill_list playerKillCount "擊殺數"

scoreboard objectives add playerID dummy "玩家ID"
scoreboard objectives add lastAttackerID dummy "最後攻擊我的玩家"

#設置隊伍
team add team "剩餘隊伍"

team add solo "單人"
team modify solo color yellow
team modify solo friendlyFire true
team modify solo seeFriendlyInvisibles false

team add waiting "等待中"
team modify spec color reset
team modify spec friendlyFire false
team add spec "旁觀者"
team modify spec color black
team modify spec friendlyFire false


team add dark_blue "深藍"
team modify dark_blue color dark_blue
team modify dark_blue friendlyFire false
team add dark_green "深綠"
team modify dark_green color dark_green
team modify dark_green friendlyFire false
team add dark_aqua "深青"
team modify dark_aqua color dark_aqua
team modify dark_aqua friendlyFire false
team add dark_red "深紅"
team modify dark_red color dark_red
team modify dark_red friendlyFire false
team add dark_purple "深紫"
team modify dark_purple color dark_purple
team modify dark_purple friendlyFire false
team add gold "橙"
team modify gold color gold
team modify gold friendlyFire false
team add gray "灰"
team modify gray color gray
team modify gray friendlyFire false
team add dark_gray "深灰"
team modify dark_gray color dark_gray
team modify dark_gray friendlyFire false
team add blue "藍"
team modify blue color blue
team modify blue friendlyFire false
team add green "綠"
team modify green color green
team modify green friendlyFire false
team add aqua "青"
team modify aqua color aqua
team modify aqua friendlyFire false
team add red "紅"
team modify red color red
team modify red friendlyFire false
team add pink "粉紅"
team modify pink color light_purple
team modify pink friendlyFire false
team add yellow "黃"
team modify yellow color yellow
team modify yellow friendlyFire false
team add white "白"
team modify white color white
team modify white friendlyFire false
team add black "黑"
team modify black color black
team modify black friendlyFire false


#list
scoreboard objectives add list dummy ["",{"text":"UHC","bold":true,"color":"#FFD579"},{"text":" Meet Up","bold":true,"color":"#FF6668"}]
scoreboard objectives setdisplay sidebar list
scoreboard players set By.Fan_Fan_tom list -9487
team join aqua By.Fan_Fan_tom



bossbar add border_time "縮圈時間"
bossbar set border_time color yellow
scoreboard objectives add border_time dummy "縮圈時間"

#計算隊伍數量
#設置盔甲做(計算隊伍總數量)
kill @e[type=marker,tag=team]
summon minecraft:marker ~ 2 ~ {Tags:["dark_blue","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["dark_green","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["dark_aqua","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["dark_red","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["dark_purple","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["gold","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["gray","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["dark_gray","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["blue","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["green","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["aqua","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["red","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["pink","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["yellow","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["white","team"]}
summon minecraft:marker ~ 2 ~ {Tags:["black","team"]}


#設置邊界
worldborder set 512
execute as @e[type=marker,tag=first_set] align xyz run worldborder center ~ ~


scoreboard objectives add pos_x dummy "X座標"
scoreboard objectives add pos_z dummy "Z座標"
#取得中心點
execute as @e[type=marker,tag=first_set] store result score @s pos_x run data get entity @s Pos[0]
execute as @e[type=marker,tag=first_set] store result score @s pos_z run data get entity @s Pos[2]


#通知安裝完成
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" \u5b89\u88dd\u5b8c\u7562 ","color":"yellow"},{"text":"(打開終界箱進行設定)","color":"gray"}]


scoreboard players reset @a trigger
playsound entity.experience_orb.pickup master @a ~ ~ ~ 100000 1 1