#Made By Fan_Fan_tom
#time 1s

#reset cd
execute if score auto.mode command matches 0 run scoreboard players set auto.mode.timer command 60
execute if score 玩家人數 list matches 1 if score auto.mode command matches 1 if score auto.mode.timer command matches 1.. run scoreboard players set auto.mode.timer command 60
#countdown
execute if score 玩家人數 list matches 2.. if score auto.mode command matches 1 if score auto.mode.timer command matches 1.. run scoreboard players remove auto.mode.timer command 1
execute if score 玩家人數 list matches 1 if score auto.mode command matches 1 if score auto.mode.timer command matches 1.. run title @a actionbar [{"text":"等待玩家中..."}]
execute if score 玩家人數 list matches 2.. if score auto.mode command matches 1 if score auto.mode.timer command matches 1.. run title @a actionbar ["",{"score":{"name":"auto.mode.timer","objective":"command"},"bold":true,"underlined":true,"color":"gold"},{"text":" 秒後自動開始遊戲"}]
execute if score auto.mode command matches 1 if score auto.mode.timer command matches 30 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute if score auto.mode command matches 1 if score auto.mode.timer command matches 20 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.25 1
execute if score auto.mode command matches 1 if score auto.mode.timer command matches 10 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.5 1
execute if score auto.mode command matches 1 if score auto.mode.timer command matches 1..9 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1

#start
execute if score auto.mode command matches 1 if score auto.mode.timer command matches 0 if score status command matches 1 run function meetup:type/work/random_team
execute if score auto.mode command matches 1 if score auto.mode.timer command matches 0 if score status command matches 1 run function meetup:type/start/ready






#Loop
schedule function meetup:type/auto_start_timer 1s