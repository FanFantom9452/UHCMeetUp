#Made By Fan_Fan_tom
#first line
execute unless items entity @s enderchest.0 * run function meetup:type/work/ui/page/3/set
#golden HEad
execute unless items entity @s enderchest.1 * run scoreboard players add mode.golden_head command 1
execute unless items entity @s enderchest.1 * run function meetup:type/work/ui/page/3/set
execute unless items entity @s enderchest.2 * run scoreboard players add mode.timebomb command 1
execute unless items entity @s enderchest.2 * run function meetup:type/work/ui/page/3/set
execute unless items entity @s enderchest.3 * run scoreboard players add mode.no_clean command 1
execute unless items entity @s enderchest.3 * run function meetup:type/work/ui/page/3/set
execute unless items entity @s enderchest.4 * run scoreboard players add mode.hole command 1
execute unless items entity @s enderchest.4 * run function meetup:type/work/ui/page/3/set
execute unless items entity @s enderchest.5 * run scoreboard players add mode.double_hp command 1
execute unless items entity @s enderchest.5 * run function meetup:type/work/ui/page/3/set
execute unless items entity @s enderchest.6 * run scoreboard players add mode.no_sheild command 1
execute unless items entity @s enderchest.6 * run function meetup:type/work/ui/page/3/set
#second line

#execute unless items entity @s enderchest.10 * run function meetup:type/item/game_default_items
#execute unless items entity @s enderchest.10 * run function meetup:type/work/ui/page/2/set

#execute unless items entity @s enderchest.11 * run function meetup:type/item/give_default_items
#execute unless items entity @s enderchest.11 * run function meetup:type/work/ui/page/2/set

#execute unless items entity @s enderchest.12 * run function meetup:type/item/save
#execute unless items entity @s enderchest.12 * run function meetup:type/work/ui/page/2/set

#third line


execute unless items entity @s enderchest.18 * run function meetup:type/work/ui/turn_to_page {page:2}
#execute unless items entity @s enderchest.26 * run function meetup:type/work/ui/turn_to_page {page:4}