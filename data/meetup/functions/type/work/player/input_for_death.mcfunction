#Made By Fan_Fan_tom
execute store result storage meetup:death_pos x int 1 run data get entity @s LastDeathLocation.pos[0] 1
execute store result storage meetup:death_pos y int 1 run data get entity @s LastDeathLocation.pos[1] 1
execute store result storage meetup:death_pos z int 1 run data get entity @s LastDeathLocation.pos[2] 1
function meetup:type/work/player/death with storage meetup:death_pos


