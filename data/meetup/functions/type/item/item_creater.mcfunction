#Made By Fan_Fan_tom
summon item ~ ~ ~ {Tags:["unset_default_item"],PickupDelay:200,Invulnerable:1b,Item:{id:"minecraft:command_block",Count:64b,tag:{}}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Owner set from entity @s UUID
$data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Item.id set from storage meetup:items Inventory[$(Slot)].id
$data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Item.Count set from storage meetup:items Inventory[$(Slot)].Count
$data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Item.tag set from storage meetup:items Inventory[$(Slot)].tag
#if nothing then kill item
execute if entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item,nbt={Item:{id:"minecraft:command_block",Count:1b,tag:{tmp:1b}}}] run kill @e[type=item,sort=nearest,limit=1,tag=unset_default_item,nbt={Item:{id:"minecraft:command_block",Count:64b}}]
#finish data set item can pick it up
data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] PickupDelay set value 0
#remove tag
tag @e[type=item,sort=nearest,limit=1,tag=unset_default_item] remove unset_default_item