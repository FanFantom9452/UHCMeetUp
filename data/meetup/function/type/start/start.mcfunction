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
function meetup:type/start/spreadplayers/input

gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]
#偵測人數
function meetup:type/work/update_remaining_player

#偵測勝利
scoreboard players set winner.Testfor command 1
function meetup:type/work/check_if_last_player_or_team

#縮圈系統
execute store result storage meetup:border map_size int 1 run scoreboard players get map_size command
execute store result storage meetup:border next_border_time int 1 run scoreboard players get next_border_time command
function meetup:type/work/border/first_start with storage meetup:border

#啟用遊戲計時
function meetup:type/time