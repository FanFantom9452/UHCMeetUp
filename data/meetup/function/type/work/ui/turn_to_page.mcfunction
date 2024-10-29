#Made By Fan_Fan_tom
scoreboard players set @s page 9487945
tellraw @s {"entity":"@s","nbt":"EnderItems"}
$function meetup:type/work/ui/page/$(page)/set
tellraw @s {"entity":"@s","nbt":"EnderItems"}
$scoreboard players set @s page $(page)