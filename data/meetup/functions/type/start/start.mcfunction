#開始遊戲
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 0.3 1
title @a times 0 100 0
title @a subtitle {"text":"\u904a\u6232\u958b\u59cb","color":"aqua"}
title @a title "§6§lUHC §c§lMeet Up"
#無敵
effect clear @a
effect give @a minecraft:resistance 30 4
effect give @a minecraft:regeneration 30 4 true


effect give @a minecraft:saturation infinite 1 true
difficulty hard

advancement revoke @a only meetup:open_ender_chest
advancement revoke @a only meetup:player_hurt_player



scoreboard players reset 玩家人數 list
execute as @a unless score @s kill_list matches -2147483648..2147483647 run scoreboard players set @s kill_list 0
scoreboard players reset * lastAttackerID



#關閉中介箱
execute at @e[type=marker,tag=first_set] run setblock ~ 303 ~ air
#隨機TP
execute if score teamCount command matches 1 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 20 256 false @a[team=!spec]
execute if score teamCount command matches 2 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 100 256 true @a[team=!spec]
execute if score teamCount command matches 3 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 85 256 true @a[team=!spec]
execute if score teamCount command matches 4 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 62 256 true @a[team=!spec]
execute if score teamCount command matches 5 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 50 256 true @a[team=!spec]
execute if score teamCount command matches 6 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 42 256 true @a[team=!spec]
execute if score teamCount command matches 7 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 35 256 true @a[team=!spec]
execute if score teamCount command matches 8 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 32 256 true @a[team=!spec]
execute if score teamCount command matches 9 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 30 256 true @a[team=!spec]
execute if score teamCount command matches 10..11 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 20 256 true @a[team=!spec]
execute if score teamCount command matches 12..13 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 20 256 true @a[team=!spec]
execute if score teamCount command matches 14..16 as @e[type=minecraft:marker,tag=first_set] at @s run spreadplayers ~ ~ 20 256 true @a[team=!spec]



#地洞模式
execute if score hole mode matches 2 run schedule function meetup:type/start/hole_mine 10t

gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]
#偵測人數
function meetup:type/work/update_remaining_player

#偵測勝利
scoreboard players set winner.Testfor command 1
function meetup:type/work/check_if_last_player_or_team

#縮圈系統
scoreboard players set borderLevel border_time 0
scoreboard players set ing border_time 0
scoreboard players set border_time border_time 60
bossbar set border_time max 60
#啟用遊戲計時
function meetup:type/time