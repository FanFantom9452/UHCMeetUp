#Made By Fan_Fan_tom
#死亡傳送回擊殺者
execute if score @s death matches 1.. run function meetup:type/work/player/input_for_death
#玩家擊殺觸發
execute if score @s kill matches 1.. run function meetup:type/work/player/kill_player
#無敵時間
function meetup:type/work/player/no_clean/work
#雙倍模式
execute if score mode.double_hp command matches 2 if items entity @s weapon.mainhand golden_apple[!custom_data] run item modify entity @s weapon.mainhand meetup:double_hp_golden_apple
execute if score mode.double_hp command matches 2 if items entity @s weapon.offhand golden_apple[!custom_data] run item modify entity @s weapon.offhand meetup:double_hp_golden_apple
#禁用盾牌
execute if score mode.no_sheild command matches 2 if predicate meetup:check_shield run clear @s shield