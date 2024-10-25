#Made By Fan_Fan_tom
advancement revoke @s only meetup:use_sp_ench_weapon
execute if items entity @s weapon.mainhand #minecraft:enchantable/sharp_weapon if items entity @s weapon.offhand flow_armor_trim_smithing_template[custom_data~{sp_ench_weapon:1b}] run function meetup:type/work/item_effect/sp_ench_weapon