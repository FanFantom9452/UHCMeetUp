#Made By Fan_Fan_tom
scoreboard players reset @a trigger
schedule clear meetup:type/fighting
schedule clear meetup:type/time
schedule clear meetup:type/work/border/end/input
schedule clear meetup:type/work/border/start/input

scoreboard players set status command 0
execute at @e[type=marker,tag=first_set] run fill ~15 300 ~15 ~-15 305 ~-15 air

scoreboard players reset * list
scoreboard objectives remove list

#清除死亡生成的箱子
function meetup:type/work/deathbox/remove_all_chest

effect clear @a
title @a times 20 100 20
title @a subtitle {"text":"\u89e3\u9664\u5b89\u88dd\u6210\u529f","color":"yellow"}
title @a title "§6§lUHC §c§lMeet Up"
effect give @a minecraft:resistance 9487 87 true



#team remove
team remove aqua
team remove blue
team remove dark_aqua
team remove dark_blue
team remove dark_gray
team remove dark_green
team remove dark_purple
team remove dark_red
team remove gold
team remove gray
team remove green
team remove pink
team remove red
team remove solo
team remove white
team remove black
team remove yellow
team remove waiting
team remove spec
team remove team




clear @a
gamemode adventure @a
tp @a @e[type=marker,tag=first_set,limit=1]
effect give @a weakness 60 0 true
xp set @a 0 levels
xp set @a 0 points

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

#清除上面場地
execute at @e[type=marker,tag=first_set] run fill ~15 300 ~15 ~-15 305 ~-15 air

#清除盔甲做
kill @e[type=item]
kill @e[type=arrow,nbt={inGround:1b}]

bossbar remove minecraft:border_time

#重製邊界
worldborder set 6000000

#告知解除安裝中
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" 解除安裝完成","color":"yellow"}]

