#Made By Fan_Fan_tom
scoreboard players add @s kill_list 1
scoreboard players remove @s kill 1
tellraw @s ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" 擊殺數+1","color":"yellow"}]
execute if score @s kill matches 1.. run function meetup:type/work/player/kill_player