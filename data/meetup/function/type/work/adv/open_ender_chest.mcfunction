#Made By Fan_Fan_tom
advancement revoke @s only meetup:open_ender_chest
execute unless score @s page matches -2147483648..2147483647 run scoreboard players set @s page 1
execute if entity @s[tag=admin] if score @s page matches 1 run function meetup:type/work/ui/page/1/set
execute if entity @s[tag=admin] if score @s page matches 2 run function meetup:type/work/ui/page/2/set
execute if entity @s[tag=admin] if score @s page matches 3 run function meetup:type/work/ui/page/3/set
execute unless entity @s[tag=admin] run function meetup:type/work/ui/clear
execute unless entity @s[tag=admin] run item replace entity @s enderchest.13 with oak_hanging_sign[custom_name='{"color":"white","italic":false,"text":"需要成為管理員進行操作"}',lore=['{"color":"gray","italic":false,"text":"/tag 玩家ID add admin"}'],custom_data={clear:1b}] 1