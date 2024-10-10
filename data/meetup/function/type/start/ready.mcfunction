#倒數
schedule function meetup:type/start/5 1s
schedule function meetup:type/start/4 2s
schedule function meetup:type/start/3 3s
schedule function meetup:type/start/2 4s
schedule function meetup:type/start/1 5s
schedule function meetup:type/start/start 6s



#給予初始裝備
execute as @a[team=!spec] at @s run function meetup:type/item/give_default_items
gamemode adventure @a

#讓fighting function執行
scoreboard players set status command 2
function meetup:type/fighting
