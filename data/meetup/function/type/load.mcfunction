#Made By Fan_Fan_tom
scoreboard objectives add command dummy "指令需要"
scoreboard objectives add trigger trigger "TRIGGER"
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"指令包載入成功","color":"yellow"},{"text":" 輸入 /function meetup:install","color":"green"},{"text":" 或","color":"yellow"},{"text":" ","color":"aqua"},{"text":"點擊這裡","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 9487945"},"hoverEvent":{"action":"show_text","value":"點我進行安裝"}},{"text":" 進行安裝"}]

execute unless score status command matches -2147483648..2147483647 run scoreboard players set status command 0
execute unless score teamCount command matches -2147483648..2147483647 run scoreboard players set teamCount command 1
execute unless score auto.mode command matches -2147483648..2147483647 run scoreboard players set auto.mode command 0


function meetup:type/tick
function meetup:type/auto_start_timer