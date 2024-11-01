#Made By Fan_Fan_tom
#first line
execute unless items entity @s enderchest.0 * run function meetup:type/work/ui/page/1/set

execute unless items entity @s enderchest.1 * if score teamCount command matches 1..15 run scoreboard players add teamCount command 1
execute unless items entity @s enderchest.1 * run function meetup:type/work/ui/page/1/set

execute unless items entity @s enderchest.5 * run function meetup:type/item/game_default_items
execute unless items entity @s enderchest.5 * run function meetup:type/work/ui/page/1/set

execute unless items entity @s enderchest.6 * run function meetup:type/item/give_default_items
execute unless items entity @s enderchest.6 * run function meetup:type/work/ui/page/1/set

execute unless items entity @s enderchest.7 * run function meetup:type/item/save
execute unless items entity @s enderchest.7 * run function meetup:type/work/ui/page/1/set

#second line
execute unless items entity @s enderchest.10 * run function meetup:type/work/random_team
execute unless items entity @s enderchest.10 * run function meetup:type/work/ui/page/1/set



execute unless items entity @s enderchest.15 * run scoreboard players add auto.mode command 1
execute unless items entity @s enderchest.15 * if score auto.mode command matches 2.. run scoreboard players set auto.mode command 0
execute unless items entity @s enderchest.15 * run function meetup:type/work/ui/page/1/set

execute unless items entity @s enderchest.16 * run function meetup:type/start/ready
execute unless items entity @s enderchest.16 * at @e[type=marker,tag=first_set] run setblock ~ 303 ~ bedrock
execute unless items entity @s enderchest.16 * run function meetup:type/work/ui/page/1/set

#third line
execute unless items entity @s enderchest.19 * if score teamCount command matches 2..16 run scoreboard players remove teamCount command 1
execute unless items entity @s enderchest.19 * run function meetup:type/work/ui/page/1/set

#換頁要在最底下
execute unless items entity @s enderchest.26 * run function meetup:type/work/ui/turn_to_page {page:2}