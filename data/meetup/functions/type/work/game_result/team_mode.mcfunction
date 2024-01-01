#Made By Fan_Fan_tom
#勝利
#team mode
title @a times 20 100 20
title @a subtitle {"text":"\u8d0f\u5f97\u4e86\u9019\u5834\u6bd4\u8cfd","color":"yellow"}
title @a title {"selector":"@a[gamemode=survival]"}
tellraw @a ["",{"text":"\n"},{"text":"UHC ","color":"gold"},{"text":"Meet Up ","color":"red"},{"text":"遊戲結束\n"},{"text":"勝利者","bold":true,"color":"#FF74FF"},{"text":" : ","color":"gray"},{"selector":"@a[gamemode=survival]","bold":true,"underlined":true},{"text":"\n "}]
execute if score auto.mode command matches 0 run tellraw @a ["",{"text":"UHC ","color":"gold"},{"text":"Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"遊戲已結束","color":"yellow"},{"text":" 輸入 /function meetup:uninstall ","color":"green"},{"text":"或","color":"yellow"},{"text":" ","color":"aqua"},{"text":"點擊這裡","color":"aqua","clickEvent":{"action":"run_command","value":"/function meetup:uninstall"},"hoverEvent":{"action":"show_text","value":"點我解除安裝"}},{"text":" 解除安裝","color":"red"}]
execute if score auto.mode command matches 1 run tellraw @a ["",{"text":"UHC ","color":"gold"},{"text":"Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"遊戲已結束 10 秒後進行重置...","color":"white"}]
execute if score auto.mode command matches 1 run schedule function meetup:reset 10s


scoreboard players set winner.Testfor command 0

