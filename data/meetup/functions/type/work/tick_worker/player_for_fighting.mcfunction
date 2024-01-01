#Made By Fan_Fan_tom
#金頭顱
tag @s[tag=!holding_GH,nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple",tag:{golden_head:1b}}}] add holding_GH
execute if score @s[tag=holding_GH] eat_GH matches 1.. run function meetup:type/work/player/eat_golden_head
tag @s[tag=holding_GH,nbt=!{SelectedItem:{id:"minecraft:enchanted_golden_apple",tag:{golden_head:1b}}}] remove holding_GH
scoreboard players reset @s[scores={eat_GH=1..}] eat_GH

#死亡傳送回擊殺者
execute if score @s death matches 1.. run function meetup:type/work/player/input_for_death

#抽獎之書
tag @s[tag=!holding_armor_book,nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{armor_book:1b}}}] add holding_armor_book
execute if score @s[tag=holding_armor_book] use_Kbook matches 1.. run function meetup:type/work/item_effect/armor_book
tag @s[tag=holding_armor_book,nbt=!{SelectedItem:{id:"minecraft:knowledge_book",tag:{armor_book:1b}}}] remove holding_armor_book

#清除不必要物品
clear @s command_block

