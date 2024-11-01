#Made By Fan_Fan_tom
#1st 縮圈
scoreboard players add borderLevel border_time 1
scoreboard players set ing border_time 1
$scoreboard players set border_time border_time $(border_time)
$bossbar set minecraft:border_time max $(border_time)
$worldborder set $(border_range) $(border_time)

#msg
$tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"開始縮圈至 $(border_range)x$(border_range)"}]

#end func
$schedule function meetup:type/work/border/end/input $(border_time)s