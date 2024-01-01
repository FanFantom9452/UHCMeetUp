#Made By Fan_Fan_tom
clear @s #meetup:settings_item{clear:1b}
#first line
item replace entity @s enderchest.0 with lime_wool{clear:1b,display:{Name:'" "',Lore:['{"text": "§7點我增加隊伍數量"}']}}
item modify entity @s enderchest.0 meetup:ui/team_count
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with wooden_sword{clear:1b,display:{Name:'"§d將初始物資還原至預設值"',Lore:['{"text": "§7點我將大家的初始物資設定為"}','{"text": "§7指令包的預設值"}']}}
item replace entity @s enderchest.7 with diamond_sword{clear:1b,display:{Name:'"§e提取初始物資"',Lore:['{"text": "§7點我領取當前的初始物資"}']}}
item replace entity @s enderchest.8 with netherite_sword{clear:1b,display:{Name:'"§b儲存當前背包為初始物資"',Lore:['{"text": "§7點我將大家的初始物資設定為"}','{"text": "§7您現在背包內的所有物品"}']}}


#second line
item replace entity @s enderchest.9 with light_blue_wool{clear:1b,display:{Name:'" "',Lore:['{"text": "§7點我隨機分隊"}']}}
item modify entity @s enderchest.9 meetup:ui/team_count
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
execute if score auto.mode command matches 1 run item replace entity @s enderchest.17 with nether_star{clear:1b,display:{Name:'"§e自動模式 §7: §a開啟"',Lore:['{"text": "§7點我開啟或關閉自動開始與重置"}']}}
execute if score auto.mode command matches 0 run item replace entity @s enderchest.17 with nether_star{clear:1b,display:{Name:'"§e自動模式 §7: §c關閉"',Lore:['{"text": "§7點我開啟或關閉自動開始與重置"}']}}

#third line
item replace entity @s enderchest.18 with red_wool{clear:1b,display:{Name:'" "',Lore:['{"text": "§7點我減少隊伍數量"}']}}
item modify entity @s enderchest.18 meetup:ui/team_count
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with diamond_block{clear:1b,display:{Name:'"§c開始遊戲"',Lore:['{"text": "§7點我開始遊戲"}']}}