#Made By Fan_Fan_tom
#沒有參賽者
#non random team
title @a times 20 100 20
title @a subtitle {"text":"\u8acb\u91cd\u65b0\u5b89\u88dd\u904a\u6232","color":"yellow"}
title @a title {"text":"\u6c92\u6709\u53c3\u8cfd\u8005","color":"red"}
tellraw @a ["",{"text":"\n"},{"text":"UHC ","color":"gold"},{"text":"Meet Up ","color":"red"},{"text":"遊戲結束\n"},{"text":"勝利者","bold":true,"color":"#FF74FF"},{"text":" : ","color":"gray"},{"text":"無","bold":true,"underlined":true},{"text":"\n "}]
execute if score auto.mode command matches 0 run function meetup:type/work/game_result/message/normal
execute if score auto.mode command matches 1 run function meetup:type/work/game_result/message/auto_mode_reset
execute if score auto.mode command matches 1 run schedule function meetup:reset 10s
scoreboard players set winner.Testfor command 0



