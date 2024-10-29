#Made By Fan_Fan_tom
clear @s *[custom_data~{clear:1b}]
#first line
item replace entity @s enderchest.0 with oak_hanging_sign[custom_name='"§e第§6 1 §e頁"',lore=['"§7當前頁數"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.1 with lime_wool[custom_name='" "',lore=['"§7點我增加隊伍數量"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.1 meetup:ui/team_count
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with wooden_sword[custom_name='"§d將初始物資還原至預設值"',lore=['"§7點我將大家的初始物資設定為"','"§7指令包的預設值"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.6 with diamond_sword[custom_name='"§e提取初始物資"',lore=['"§7點我領取當前的初始物資"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.7 with netherite_sword[custom_name='"§b儲存當前背包為初始物資"',lore=['"§7點我將大家的初始物資設定為"','"§7您現在背包內的所有物品"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.8 with air

#second line
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with light_blue_wool[custom_name='" "',lore=['"§7點我隨機分隊"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.10 meetup:ui/team_count
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
execute if score auto.mode command matches 1 run item replace entity @s enderchest.15 with nether_star[custom_name='"§e自動模式 §7: §a開啟"',lore=['"§7點我開啟或關閉自動開始與重置"'],custom_data={clear:1b}] 1
execute if score auto.mode command matches 0 run item replace entity @s enderchest.15 with nether_star[custom_name='"§e自動模式 §7: §c關閉"',lore=['"§7點我開啟或關閉自動開始與重置"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.16 with diamond_block[custom_name='"§c開始遊戲"',lore=['"§7點我開始遊戲"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.17 with air

#third line
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with red_wool[custom_name='" "',lore=['"§7點我減少隊伍數量"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.19 meetup:ui/team_count
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with arrow[custom_name='"§e下一頁"',lore=['"§7點我切換至下一頁"'],custom_data={clear:1b}] 1