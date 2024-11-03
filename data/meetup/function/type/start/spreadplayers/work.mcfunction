#開始遊戲
#隨機TP
$execute as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ $(spreadDistance) $(maxRange) $(teamModeTF) @a[team=!spec]

#地洞模式
execute if score mode.hole command matches 2 run tag @a[team=!spec] add wait_to_create_hole
execute if score mode.hole command matches 2 run schedule function meetup:type/start/spreadplayers/hole_mine 5t