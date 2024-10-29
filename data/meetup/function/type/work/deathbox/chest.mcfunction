tag @s add me
setblock ~ ~ ~ chest[type=right,facing=north]
setblock ~-1 ~ ~ chest[type=left,facing=north]
setblock ~ ~1 ~ oak_sign{front_text:{messages:['[{"selector":"@p[tag=me]"},{"text":"的死亡箱子","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
setblock ~-1 ~1 ~ air
data modify block ~ ~ ~ CustomName set from block ~ ~1 ~ front_text.messages[0]
setblock ~ ~1 ~ air
tag @s remove me

item replace block ~ ~ ~ container.0 from entity @s hotbar.0
item replace block ~ ~ ~ container.1 from entity @s hotbar.1
item replace block ~ ~ ~ container.2 from entity @s hotbar.2
item replace block ~ ~ ~ container.3 from entity @s hotbar.3
item replace block ~ ~ ~ container.4 from entity @s hotbar.4
item replace block ~ ~ ~ container.5 from entity @s hotbar.5
item replace block ~ ~ ~ container.6 from entity @s hotbar.6
item replace block ~ ~ ~ container.7 from entity @s hotbar.7
item replace block ~ ~ ~ container.8 from entity @s hotbar.8
item replace block ~ ~ ~ container.9 from entity @s inventory.0
item replace block ~ ~ ~ container.10 from entity @s inventory.1
item replace block ~ ~ ~ container.11 from entity @s inventory.2
item replace block ~ ~ ~ container.12 from entity @s inventory.3
item replace block ~ ~ ~ container.13 from entity @s inventory.4
item replace block ~ ~ ~ container.14 from entity @s inventory.5
item replace block ~ ~ ~ container.15 from entity @s inventory.6
item replace block ~ ~ ~ container.16 from entity @s inventory.7
item replace block ~ ~ ~ container.17 from entity @s inventory.8
item replace block ~ ~ ~ container.18 from entity @s inventory.9
item replace block ~ ~ ~ container.19 from entity @s inventory.10
item replace block ~ ~ ~ container.20 from entity @s inventory.11
item replace block ~ ~ ~ container.21 from entity @s inventory.12
item replace block ~ ~ ~ container.22 from entity @s inventory.13
item replace block ~ ~ ~ container.23 from entity @s inventory.14
item replace block ~ ~ ~ container.24 from entity @s inventory.15
item replace block ~ ~ ~ container.25 from entity @s inventory.16
item replace block ~ ~ ~ container.26 from entity @s inventory.17

item replace block ~-1 ~ ~ container.0 from entity @s inventory.18
item replace block ~-1 ~ ~ container.1 from entity @s inventory.19
item replace block ~-1 ~ ~ container.2 from entity @s inventory.20
item replace block ~-1 ~ ~ container.3 from entity @s inventory.21
item replace block ~-1 ~ ~ container.4 from entity @s inventory.22
item replace block ~-1 ~ ~ container.5 from entity @s inventory.23
item replace block ~-1 ~ ~ container.6 from entity @s inventory.24
item replace block ~-1 ~ ~ container.7 from entity @s inventory.25
item replace block ~-1 ~ ~ container.8 from entity @s inventory.26

item replace block ~-1 ~ ~ container.18 from entity @s armor.head
item replace block ~-1 ~ ~ container.19 from entity @s armor.chest
item replace block ~-1 ~ ~ container.20 from entity @s armor.legs
item replace block ~-1 ~ ~ container.21 from entity @s armor.feet
item replace block ~-1 ~ ~ container.22 from entity @s weapon.offhand

clear @s

#golden Head
item replace block ~-1 ~ ~ container.26 with player_head[item_name='{"bold":true,"color":"gold","italic":false,"text":"金頭顱"}',profile={id:[I;30324814,-124108764,-1709806701,437631414],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNlYmQwMTAxNjJhNDRiY2NiNmI2NDY3OWZhYTk2ZjBmOWVlYTNlZDQ4NDg5MGVlZWIwYjFmYTJmNzQ3YWFkNyJ9fX0="}]},food={nutrition:10,saturation:10,can_always_eat:true},consumable={consume_seconds:1.6,animation:"eat",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:absorption",amplifier:0,duration:2400,show_particles:1b,show_icon:1b,ambient:1b},{id:"minecraft:regeneration",amplifier:0,duration:200,show_particles:1b,show_icon:1b,ambient:1b}]}]},attribute_modifiers={modifiers:[{id:"2c6cc2ed-c235-4235-88e9-37e304323bf8",type:"block_interaction_range",amount:-1000,operation:"add_value",slot:"mainhand"},{id:"block_interaction_range",type:"block_interaction_range",amount:-1000,operation:"add_value",slot:"offhand"}],show_in_tooltip:false},max_stack_size=64,custom_data={golden_head:1b},enchantment_glint_override=true] 1