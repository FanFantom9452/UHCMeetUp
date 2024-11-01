#Made By Fan_Fan_tom
#取得當前邊界大小
execute store result score #tmp command run worldborder get
#減去每次縮圈減少範圍
scoreboard players operation #tmp command -= border_range command
#存入
execute store result storage meetup:border border_range int 1 run scoreboard players get #tmp command
execute store result storage meetup:border border_time int 1 run scoreboard players get border_time command
#run func
function meetup:type/work/border/start/work with storage meetup:border