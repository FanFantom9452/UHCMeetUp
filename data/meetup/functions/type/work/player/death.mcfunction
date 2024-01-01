#Made By Fan_Fan_tom
execute as @a at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.3 2

#召喚死亡箱子 / 重置死亡數 / 切換旁觀者
$execute positioned $(x) $(y) $(z) run function meetup:type/work/deathbox/marker


#偵測人數
function meetup:type/work/update_remaining_player

#遊戲結束
execute if score winner.Testfor command matches 1 run function meetup:type/work/check_if_last_player_or_team

#tp
function meetup:type/work/player/death_spawn_tp_to_killer