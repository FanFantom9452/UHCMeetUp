#Made By Fan_Fan_tom
#遊戲結束
#solo
title @a times 20 100 20
title @a subtitle {"text":"\u8d0f\u5f97\u4e86\u9019\u5834\u6bd4\u8cfd","color":"yellow"}
title @a title {"selector":"@a[gamemode=survival,team=solo]"}
tellraw @a ["",{"text":"\n"},{"text":"UHC ","color":"gold"},{"text":"Meet Up ","color":"red"},{"text":"遊戲結束\n"},{"text":"勝利者","bold":true,"color":"#FF74FF"},{"text":" : ","color":"gray"},{"selector":"@a[gamemode=survival,team=solo]","bold":true,"underlined":true},{"text":"\n "}]
execute if score auto.mode command matches 0 run function meetup:type/work/game_result/message/normal
execute if score auto.mode command matches 1 run function meetup:type/work/game_result/message/auto_mode_reset
execute if score auto.mode command matches 1 run schedule function meetup:reset 10s

scoreboard players set winner.Testfor command 0