#Made By Fan_Fan_tom
advancement revoke @s only meetup:special_enchantment/use_weapon
execute if items entity @s weapon.mainhand flow_armor_trim_smithing_template[!enchantments={levels:{}}] run function meetup:type/work/item_effect/special_enchantment/weapon/mainhand
execute if items entity @s weapon.offhand flow_armor_trim_smithing_template[!enchantments={levels:{}}] run function meetup:type/work/item_effect/special_enchantment/weapon/offhand

execute if items entity @s weapon.mainhand flow_armor_trim_smithing_template[enchantments={levels:{}}] run title @s actionbar {"text":"尚未附魔 無法進行轉化","color": "red"}
execute if items entity @s weapon.offhand flow_armor_trim_smithing_template[enchantments={levels:{}}] run title @s actionbar {"text":"尚未附魔 無法進行轉化","color": "red"}

execute if items entity @s weapon.mainhand flow_armor_trim_smithing_template[enchantments={levels:{}}] run playsound entity.villager.no master @s ~ ~ ~ 1 1 1
execute if items entity @s weapon.offhand flow_armor_trim_smithing_template[enchantments={levels:{}}] run playsound entity.villager.no master @s ~ ~ ~ 1 1 1