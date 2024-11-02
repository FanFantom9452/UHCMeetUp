#Made By Fan_Fan_tom
#死亡傳送回擊殺者
execute if score @s death matches 1.. run function meetup:type/work/player/input_for_death
#玩家擊殺觸發
execute if score @s kill matches 1.. run function meetup:type/work/player/kill_player