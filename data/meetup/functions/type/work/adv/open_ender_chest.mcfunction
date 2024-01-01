#Made By Fan_Fan_tom
advancement revoke @s only meetup:open_ender_chest
execute if entity @s[tag=admin] run function meetup:type/work/ui/page/1/set
execute unless entity @s[tag=admin] run function meetup:type/work/ui/clear
execute unless entity @s[tag=admin] run item replace entity @s enderchest.13 with oak_sign{clear:1b,display:{Name:'{"text":"需要成為管理員進行操作","color":"white","italic":false}',Lore:['{"text":"/tag 玩家ID add admin","color":"gray","italic":false}']}}