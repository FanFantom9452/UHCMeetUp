#Made By Fan_Fan_tom
#summon tmp item data entity
summon item_display ~ ~ ~ {Tags:["tmp_give_item"],transformation:{left_rotation:[0f,0f,0f,0f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:command_block",count:1,components:{}}}
$data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_give_item] item.id set from storage meetup:items Inventory[{Slot:$(Slot)b}].id
$data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_give_item] item.count set from storage meetup:items Inventory[{Slot:$(Slot)b}].count
$data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_give_item] item.components set from storage meetup:items Inventory[{Slot:$(Slot)b}].components
#replace
$item replace entity @s $(replaceSlot) from entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_give_item] contents
#remove tmp entity
kill @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_give_item]