#Made By Fan_Fan_tom
clear @s *[custom_data~{clear:1b}]
#first line
item replace entity @s enderchest.0 with oak_hanging_sign[custom_name='"§e第§6 3 §e頁"',lore=['"§7當前頁數"'],custom_data={clear:1b}] 1
#golden head
execute if score mode.golden_head command matches 7.. run scoreboard players set mode.golden_head command 0
execute if score mode.golden_head command matches 6 run item replace entity @s enderchest.1 with enchanted_golden_apple[custom_name='"§b金頭顱模式 §7: §6雙倍模式"',lore=['"§7點我來切換模式"','"§f此模式的金頭顱效果 : "','"§7 - §9吸收 I (02:00)"','"§7 - §9回復 III (00:05)"','"§7 - §9加速 II (00:15)"','"§7使用秒數 :§f 0 §7秒"','"§7 "','"§6取得方式 §7: §c玩家死亡掉落金頭顱"'],custom_data={clear:1b}] 1
execute if score mode.golden_head command matches 4 run item replace entity @s enderchest.1 with enchanted_golden_apple[custom_name='"§b金頭顱模式 §7: §a快速模式"',lore=['"§7點我來切換模式"','"§f此模式的金頭顱效果 : "','"§7 - §9吸收 I (02:00)"','"§7 - §9回復 II (00:10)"','"§7使用秒數 :§f 0 §7秒"','"§7 "','"§6取得方式 §7: §c玩家死亡掉落金頭顱"'],custom_data={clear:1b}] 1
execute if score mode.golden_head command matches 2 run item replace entity @s enderchest.1 with enchanted_golden_apple[custom_name='"§b金頭顱模式 §7: §e一般模式"',lore=['"§7點我來切換模式"','"§f此模式的金頭顱效果 : "','"§7 - §9吸收 I (02:00)"','"§7 - §9回復 II (00:10)"','"§7使用秒數 :§f 1.6 §7秒"','"§7 "','"§6取得方式 §7: §c玩家死亡掉落金頭顱"'],custom_data={clear:1b}] 1
execute if score mode.golden_head command matches 0 run item replace entity @s enderchest.1 with enchanted_golden_apple[custom_name='"§b金頭顱模式 §7: §c關閉"',lore=['"§7點我來切換模式"','"§f此模式的金頭顱效果 : "','"§7 - §9無"','"§7 "','"§6取得方式 §7: §c無法取得"'],custom_data={clear:1b}] 1
#TimeBomb
execute if score mode.timebomb command matches 3.. run scoreboard players set mode.timebomb command 0 
execute if score mode.timebomb command matches 2 run item replace entity @s enderchest.2 with tnt[custom_name='"§b定時炸彈模式 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，玩家死亡後30秒箱子會產生爆炸"'],custom_data={clear:1b}] 1
execute if score mode.timebomb command matches 0 run item replace entity @s enderchest.2 with tnt[custom_name='"§b定時炸彈模式 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，玩家死亡後30秒箱子會產生爆炸"'],custom_data={clear:1b}] 1
#NoClean
execute if score mode.no_clean command matches 3.. run scoreboard players set mode.no_clean command 0 
execute if score mode.no_clean command matches 2 run item replace entity @s enderchest.3 with iron_sword[custom_name='"§b防撿尾刀模式 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，擊殺玩家後獲得無敵 5 秒"','"§c無敵期間攻擊其他玩家後取消無敵"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
execute if score mode.no_clean command matches 0 run item replace entity @s enderchest.3 with iron_sword[custom_name='"§b防撿尾刀模式 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，擊殺玩家後獲得無敵 5 秒"','"§c無敵期間攻擊其他玩家後取消無敵"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
#Hole Mode
execute if score mode.hole command matches 3.. run scoreboard players set mode.hole command 0 
execute if score mode.hole command matches 2 run item replace entity @s enderchest.4 with diamond_pickaxe[custom_name='"§b地洞模式 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，玩家起始位置會在地底"','"§c限制高度 45 格"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
execute if score mode.hole command matches 0 run item replace entity @s enderchest.4 with diamond_pickaxe[custom_name='"§b地洞模式 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，玩家起始位置會在地底"','"§c限制高度 45 格"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
#double health mode
execute if score mode.double_hp command matches 3.. run scoreboard players set mode.double_hp command 0 
execute if score mode.double_hp command matches 2 run item replace entity @s enderchest.5 with potion[custom_name='"§b雙倍血量 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，所有玩家血量變為40 (兩排血)"','"§c特殊規則 : 一般金蘋果回復量翻倍"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false},potion_contents={potion:"minecraft:strong_healing"},hide_additional_tooltip={}] 1
execute if score mode.double_hp command matches 0 run item replace entity @s enderchest.5 with potion[custom_name='"§b雙倍血量 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，所有玩家血量變為40 (兩排血)"','"§c特殊規則 : 一般金蘋果回復量翻倍"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false},potion_contents={potion:"minecraft:strong_healing"},hide_additional_tooltip={}] 1
#no sheild mode
execute if score mode.no_sheild command matches 3.. run scoreboard players set mode.no_sheild command 0 
execute if score mode.no_sheild command matches 2 run item replace entity @s enderchest.6 with shield[custom_name='"§b禁用盾牌 §7: §a開啟"',lore=['"§7點我來開啟或關閉"','"§7開啟後，所有玩家無法使用盾牌"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
execute if score mode.no_sheild command matches 0 run item replace entity @s enderchest.6 with shield[custom_name='"§b禁用盾牌 §7: §c關閉"',lore=['"§7點我來開啟或關閉"','"§7開啟後，所有玩家無法使用盾牌"'],custom_data={clear:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
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