#Made By Fan_Fan_tom
clear @s *[custom_data~{clear:1b}]
#first line
item replace entity @s enderchest.0 with oak_hanging_sign[custom_name='"§e第§6 2 §e頁"',lore=['"§7當前頁數"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.1 with lime_wool[custom_name='" "',lore=['"§7點我增加地圖大小"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.1 meetup:ui/map_size
item replace entity @s enderchest.2 with lime_wool[custom_name='" "',lore=['"§7點我增加每次縮圈減少範圍"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.2 meetup:ui/border_close_range
item replace entity @s enderchest.3 with lime_wool[custom_name='" "',lore=['"§7點我增加每次縮圈秒數"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.3 meetup:ui/border_time
item replace entity @s enderchest.4 with lime_wool[custom_name='" "',lore=['"§7點我增加縮圈完畢間隔秒數"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.4 meetup:ui/next_border_time
item replace entity @s enderchest.5 with lime_wool[custom_name='" "',lore=['"§7點我增加玩家初始經驗等級"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.5 meetup:ui/player_exp_level
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air

#second line
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with filled_map[custom_name='" "',lore=['"§7當前地圖大小"','"§7點我還原至預設值"'],custom_data={clear:1b},hide_additional_tooltip={}] 1
item modify entity @s enderchest.10 meetup:ui/map_size
item replace entity @s enderchest.11 with bedrock[custom_name='" "',lore=['"§7當前每次縮圈減少範圍"','"§7點我還原至預設值"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.11 meetup:ui/border_close_range
item replace entity @s enderchest.12 with clock[custom_name='" "',lore=['"§7當前每次縮圈秒數"','"§7點我還原至預設值"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.12 meetup:ui/border_time
item replace entity @s enderchest.13 with white_bed[custom_name='" "',lore=['"§7當前縮圈完畢間隔秒數"','"§7點我還原至預設值"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.13 meetup:ui/next_border_time
item replace entity @s enderchest.14 with experience_bottle[custom_name='" "',lore=['"§7當前玩家初始經驗等級"','"§7點我還原至預設值"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.14 meetup:ui/player_exp_level
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air

#third line
item replace entity @s enderchest.18 with arrow[custom_name='"§e上一頁"',lore=['"§7點我切換至上一頁"'],custom_data={clear:1b}] 1
item replace entity @s enderchest.19 with red_wool[custom_name='" "',lore=['"§7點我減少地圖大小"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.19 meetup:ui/map_size
item replace entity @s enderchest.20 with red_wool[custom_name='" "',lore=['"§7點我減少每次縮圈減少範圍"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.20 meetup:ui/border_close_range
item replace entity @s enderchest.21 with red_wool[custom_name='" "',lore=['"§7點我減少每次縮圈秒數"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.21 meetup:ui/border_time
item replace entity @s enderchest.22 with red_wool[custom_name='" "',lore=['"§7點我減少縮圈完畢間隔秒數"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.22 meetup:ui/next_border_time
item replace entity @s enderchest.23 with red_wool[custom_name='" "',lore=['"§7點我減少玩家初始經驗等級"'],custom_data={clear:1b}] 1
item modify entity @s enderchest.23 meetup:ui/player_exp_level
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with arrow[custom_name='"§e下一頁"',lore=['"§7點我切換至下一頁"'],custom_data={clear:1b}] 1