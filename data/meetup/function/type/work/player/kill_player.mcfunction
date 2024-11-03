#Made By Fan_Fan_tom
scoreboard players add @s kill_list 1
scoreboard players remove @s kill 1
tellraw @s ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" 擊殺數+1","color":"yellow"}]
#無敵時間
execute if score mode.no_clean command matches 2 run scoreboard players operation @s timer.no_clean = timer.no_clean timer.no_clean
execute if score @s kill matches 1.. run function meetup:type/work/player/kill_player