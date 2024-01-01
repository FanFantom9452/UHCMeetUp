#Made By Fan_Fan_tom
execute store result score #tmp command run random value 1..100
execute if score #tmp command matches 1..20 run function meetup:type/item/armor/diamond_chestplate
execute if score #tmp command matches 21..40 run function meetup:type/item/armor/diamond_leggings
execute if score #tmp command matches 41..70 run function meetup:type/item/armor/diamond_helmet
execute if score #tmp command matches 71..100 run function meetup:type/item/armor/diamond_boots
scoreboard players reset @s use_Kbook
