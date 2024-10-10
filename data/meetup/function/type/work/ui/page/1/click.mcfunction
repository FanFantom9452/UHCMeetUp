#Made By Fan_Fan_tom
#first line
execute unless data entity @s EnderItems[{Slot:0b}] if score teamCount command matches 1..15 run scoreboard players add teamCount command 1
execute unless data entity @s EnderItems[{Slot:0b}] run function meetup:type/work/ui/page/1/set


execute unless data entity @s EnderItems[{Slot:6b}] run function meetup:type/item/game_default_items
execute unless data entity @s EnderItems[{Slot:6b}] run function meetup:type/work/ui/page/1/set

execute unless data entity @s EnderItems[{Slot:7b}] run function meetup:type/item/give_default_items
execute unless data entity @s EnderItems[{Slot:7b}] run function meetup:type/work/ui/page/1/set




execute unless data entity @s EnderItems[{Slot:8b}] run function meetup:type/item/save
execute unless data entity @s EnderItems[{Slot:8b}] run function meetup:type/work/ui/page/1/set


#second line
execute unless data entity @s EnderItems[{Slot:9b}] run function meetup:type/work/random_team
execute unless data entity @s EnderItems[{Slot:9b}] run function meetup:type/work/ui/page/1/set



execute unless data entity @s EnderItems[{Slot:17b}] run scoreboard players add auto.mode command 1
execute unless data entity @s EnderItems[{Slot:17b}] if score auto.mode command matches 2.. run scoreboard players set auto.mode command 0
execute unless data entity @s EnderItems[{Slot:17b}] run function meetup:type/work/ui/page/1/set

#third line
execute unless data entity @s EnderItems[{Slot:18b}] if score teamCount command matches 2..16 run scoreboard players remove teamCount command 1
execute unless data entity @s EnderItems[{Slot:18b}] run function meetup:type/work/ui/page/1/set

execute unless data entity @s EnderItems[{Slot:26b}] run function meetup:type/start/ready
execute unless data entity @s EnderItems[{Slot:26b}] at @e[type=marker,tag=first_set] run setblock ~ 303 ~ bedrock
execute unless data entity @s EnderItems[{Slot:26b}] run function meetup:type/work/ui/page/1/set