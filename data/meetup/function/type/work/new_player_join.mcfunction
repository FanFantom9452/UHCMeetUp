#Made By Fan_Fan_tom
#剛加入遊戲的設定
tp @s @e[type=minecraft:marker,tag=first_set,sort=nearest,limit=1]
tp @s ~ 301 ~
execute at @e[type=marker,tag=first_set] run spawnpoint @s ~ ~ ~
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1
effect give @s minecraft:blindness 5 0
effect give @s minecraft:absorption 1 0 true
title @s times 20 100 20
title @s subtitle ["",{"text":"By","color":"dark_green"},{"text":": ","color":"gray"},{"text":"\u53ea","color":"red"},{"text":"\u662f","color":"gold"},{"text":"\u4e00","color":"yellow"},{"text":"\u500b","color":"green"},{"text":"\u5c0f","color":"aqua"},{"text":"\u98ef","color":"blue"},{"text":"\u6876","color":"light_purple"}]
title @s title "§6§lUHC §c§lMeet Up"
gamemode adventure @s
#避免下一局的時候 玩家身上有物品 所以提前清除 且不影響初始物品設定
clear @s
team join waiting @s