#Made By Fan_Fan_tom
#msg
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"縮圈完畢 "}]
#run func

#判斷是否還要縮圈
execute store result score #nowBorderRange command run worldborder get
scoreboard players operation #nowBorderRange command -= border_range command
#如果還有剩下1以上的範圍 
$execute if score #nowBorderRange command matches 1.. run schedule function meetup:type/work/border/start/input $(next_border_time)s
#1st 縮圈
execute if score #nowBorderRange command matches 1.. run scoreboard players set ing border_time 0
$execute if score #nowBorderRange command matches 1.. run scoreboard players set border_time border_time $(next_border_time)


#msg
execute unless score #nowBorderRange command matches 1.. run tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"縮圈已完全結束"}]