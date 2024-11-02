#Made By Fan_Fan_tom
clear @s *[custom_data~{clear:1b}]
#first line
item replace entity @s enderchest.0 with oak_hanging_sign[custom_name='"§e第§6 3 §e頁"',lore=['"§7當前頁數"'],custom_data={clear:1b}] 1
#golden head
execute if score mode.golden_head command matches 3.. run scoreboard players set mode.golden_head command 0 
execute if score mode.golden_head command matches 2 run item replace entity @s enderchest.1 with enchanted_golden_apple[custom_name='"§b金頭顱模式 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，擊殺玩家後箱子會出現一顆金頭顱"'],custom_data={clear:1b}] 1
execute if score mode.golden_head command matches 0 run item replace entity @s enderchest.1 with enchanted_golden_apple[custom_name='"§b金頭顱模式 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，擊殺玩家後箱子會出現一顆金頭顱"'],custom_data={clear:1b}] 1
#TimeBomb
execute if score mode.timebomb command matches 3.. run scoreboard players set mode.timebomb command 0 
execute if score mode.timebomb command matches 2 run item replace entity @s enderchest.2 with tnt[custom_name='"§b定時炸彈模式 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，玩家死亡後30秒箱子會產生爆炸"'],custom_data={clear:1b}] 1
execute if score mode.timebomb command matches 0 run item replace entity @s enderchest.2 with tnt[custom_name='"§b定時炸彈模式 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，玩家死亡後30秒箱子會產生爆炸"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air


#second line
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air

#third line
item replace entity @s enderchest.18 with arrow[custom_name='"§e上一頁"',lore=['"§7點我切換至上一頁"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air