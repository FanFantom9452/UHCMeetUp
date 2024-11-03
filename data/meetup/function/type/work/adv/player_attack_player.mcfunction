#Made By Fan_Fan_tom
advancement revoke @s only meetup:player_attack_player

execute if score @s timer.no_clean matches 1.. run tellraw @s ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" 你攻擊了其他玩家 無敵時間提前結束","color":"red"}]
execute if score @s timer.no_clean matches 1.. run scoreboard players set @s timer.no_clean 2