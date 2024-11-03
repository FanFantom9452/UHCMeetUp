#Made By Fan_Fan_tom
#countdown timer
execute if score @s timer.no_clean matches 1.. run scoreboard players remove @s timer.no_clean 1
#give effect
execute if score @s timer.no_clean matches 21.. run effect give @s resistance 1 4 true


#execute if score @s timer.no_clean matches 1.. run title @s times 0 2 0
#execute if score @s timer.no_clean matches 1.. run title @s subtitle "無敵狀態"
#execute if score @s timer.no_clean matches 1.. run title @s title ""
execute if score @s timer.no_clean matches 1.. run function meetup:type/work/player/no_clean/actionbar
execute if score @s timer.no_clean matches 1.. run function meetup:type/work/maho/no_clean

#countdown over
execute if score @s timer.no_clean matches 0 run title @s reset
execute if score @s timer.no_clean matches 0 run effect clear @s resistance
execute if score @s timer.no_clean matches 0 run scoreboard players reset @s timer.no_clean