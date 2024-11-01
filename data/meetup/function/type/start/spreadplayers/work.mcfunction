#開始遊戲
#隨機TP
$execute as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ $(spreadDistance) $(maxRange) $(teamModeTF) @a[team=!spec]

#地洞模式
execute if score hole mode matches 2 run schedule function meetup:type/start/hole_mine 10t