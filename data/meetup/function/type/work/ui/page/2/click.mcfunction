#Made By Fan_Fan_tom
#first line
execute unless items entity @s enderchest.0 * run function meetup:type/work/ui/page/2/set

execute unless items entity @s enderchest.1 * run scoreboard players add map_size command 25
execute unless items entity @s enderchest.1 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.2 * run scoreboard players add border_range command 10
execute unless items entity @s enderchest.2 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.3 * run scoreboard players add border_time command 5
execute unless items entity @s enderchest.3 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.4 * run scoreboard players add next_border_time command 5
execute unless items entity @s enderchest.4 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.5 * run scoreboard players add playerExpLevel command 5
execute unless items entity @s enderchest.5 * run function meetup:type/work/ui/page/2/set

#second line
execute unless items entity @s enderchest.10 * run scoreboard players set map_size command 512
execute unless items entity @s enderchest.10 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.11 * run scoreboard players set border_range command 100
execute unless items entity @s enderchest.11 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.12 * run scoreboard players set border_time command 60
execute unless items entity @s enderchest.12 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.13 * run scoreboard players set next_border_time command 60
execute unless items entity @s enderchest.13 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.14 * run scoreboard players set playerExpLevel command 87
execute unless items entity @s enderchest.14 * run function meetup:type/work/ui/page/2/set

#third line
execute unless items entity @s enderchest.19 * if score map_size command matches 26.. run scoreboard players remove map_size command 25
execute unless items entity @s enderchest.19 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.20 * if score border_range command matches 11.. run scoreboard players remove border_range command 10
execute unless items entity @s enderchest.20 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.21 * if score border_time command matches 6.. run scoreboard players remove border_time command 5
execute unless items entity @s enderchest.21 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.22 * if score next_border_time command matches 6.. run scoreboard players remove next_border_time command 5
execute unless items entity @s enderchest.22 * run function meetup:type/work/ui/page/2/set
execute unless items entity @s enderchest.23 * if score playerExpLevel command matches 6.. run scoreboard players remove playerExpLevel command 5
execute unless items entity @s enderchest.23 * run function meetup:type/work/ui/page/2/set


#換頁一定要在最底下 會被先後順序搞掉
execute unless items entity @s enderchest.18 * run function meetup:type/work/ui/turn_to_page {page:1}
execute unless items entity @s enderchest.26 * run function meetup:type/work/ui/turn_to_page {page:3}