scoreboard players add @s timer.death_chest 1
scoreboard players set #tmp_timer timer.death_chest 30
scoreboard players operation #tmp_timer timer.death_chest -= @s timer.death_chest
kill @e[type=text_display,tag=timer.death_chest,sort=nearest,limit=1]
summon text_display ~-0.5 ~1 ~ {billboard:"center",Tags:["timer.death_chest"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:'{"bold":true,"color":"white","italic":false,"score":{"name":"#tmp_timer","objective":"timer.death_chest"}}',background:1678049280}
execute if score @s timer.death_chest matches 30.. run function meetup:type/work/deathbox/remove_self_chest