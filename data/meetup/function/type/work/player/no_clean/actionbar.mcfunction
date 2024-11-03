#Made By Fan_Fan_tom
scoreboard players operation #tmp timer.no_clean = @s timer.no_clean
scoreboard players set #100 timer.no_clean 100
scoreboard players operation #tmp timer.no_clean *= #100 timer.no_clean
scoreboard players operation #tmp timer.no_clean /= timer.no_clean timer.no_clean
execute if score #tmp timer.no_clean matches 91..100 run title @s actionbar "§f無敵時間 §a██████████§7"
execute if score #tmp timer.no_clean matches 81..90 run title @s actionbar "§f無敵時間 §a█████████§7█"
execute if score #tmp timer.no_clean matches 71..80 run title @s actionbar "§f無敵時間 §e████████§7██"
execute if score #tmp timer.no_clean matches 61..70 run title @s actionbar "§f無敵時間 §e███████§7███"
execute if score #tmp timer.no_clean matches 51..60 run title @s actionbar "§f無敵時間 §6██████§7████"
execute if score #tmp timer.no_clean matches 41..50 run title @s actionbar "§f無敵時間 §6█████§7█████"
execute if score #tmp timer.no_clean matches 31..40 run title @s actionbar "§f無敵時間 §c████§7██████"
execute if score #tmp timer.no_clean matches 21..30 run title @s actionbar "§f無敵時間 §c███§7███████"
execute if score #tmp timer.no_clean matches 11..20 run title @s actionbar "§f無敵時間 §4██§7████████"
execute if score #tmp timer.no_clean matches 1..10 run title @s actionbar "§f無敵時間 §4█§7█████████"
execute if score #tmp timer.no_clean matches 1 run title @s actionbar "§c無敵時間結束"