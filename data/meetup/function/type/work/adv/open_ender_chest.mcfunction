#Made By Fan_Fan_tom
advancement revoke @s only meetup:open_ender_chest
execute if entity @s[tag=admin] run function meetup:type/work/ui/page/1/set
execute unless entity @s[tag=admin] run function meetup:type/work/ui/clear
execute unless entity @s[tag=admin] run item replace entity @s enderchest.13 with oak_sign[custom_name='{"color":"white","italic":false,"text":"需要成為管理員進行操作"}',lore=['{"color":"gray","italic":false,"text":"/tag 玩家ID add admin"}'],custom_data={clear:1b}] 1