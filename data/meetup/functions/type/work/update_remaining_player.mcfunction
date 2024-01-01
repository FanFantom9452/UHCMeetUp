#Made By Fan_Fan_tom
#偵測人數
execute store result score 剩餘人數 list if entity @a[team=!spec,gamemode=survival]
execute store success score @e[type=marker,tag=dark_blue,limit=1] command if entity @a[team=dark_blue,gamemode=survival]
execute store success score @e[type=marker,tag=dark_green,limit=1] command if entity @a[team=dark_green,gamemode=survival]
execute store success score @e[type=marker,tag=dark_aqua,limit=1] command if entity @a[team=dark_aqua,gamemode=survival]
execute store success score @e[type=marker,tag=dark_red,limit=1] command if entity @a[team=dark_red,gamemode=survival]
execute store success score @e[type=marker,tag=dark_purple,limit=1] command if entity @a[team=dark_purple,gamemode=survival]
execute store success score @e[type=marker,tag=gold,limit=1] command if entity @a[team=gold,gamemode=survival]
execute store success score @e[type=marker,tag=gray,limit=1] command if entity @a[team=gray,gamemode=survival]
execute store success score @e[type=marker,tag=dark_gray,limit=1] command if entity @a[team=dark_gray,gamemode=survival]
execute store success score @e[type=marker,tag=blue,limit=1] command if entity @a[team=blue,gamemode=survival]
execute store success score @e[type=marker,tag=green,limit=1] command if entity @a[team=green,gamemode=survival]
execute store success score @e[type=marker,tag=aqua,limit=1] command if entity @a[team=aqua,gamemode=survival]
execute store success score @e[type=marker,tag=red,limit=1] command if entity @a[team=red,gamemode=survival]
execute store success score @e[type=marker,tag=pink,limit=1] command if entity @a[team=pink,gamemode=survival]
execute store success score @e[type=marker,tag=yellow,limit=1] command if entity @a[team=yellow,gamemode=survival]
execute store success score @e[type=marker,tag=white,limit=1] command if entity @a[team=white,gamemode=survival]
execute store success score @e[type=marker,tag=black,limit=1] command if entity @a[team=black,gamemode=survival]
execute store result score 剩餘隊伍 list if entity @e[type=marker,tag=team,scores={command=1}]
team join gold 剩餘人數
team join green 剩餘隊伍