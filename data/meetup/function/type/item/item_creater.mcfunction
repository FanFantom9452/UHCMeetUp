#Made By Fan_Fan_tom
summon item ~ ~ ~ {Tags:["unset_default_item"],PickupDelay:200,Invulnerable:1b,Item:{id:"minecraft:command_block",count:64b,components:{custom_data:{tmp:1b}}}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Owner set from entity @s UUID
$data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Item.id set from storage meetup:items Inventory[$(Slot)].id
$data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Item.count set from storage meetup:items Inventory[$(Slot)].count
$data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] Item.components set from storage meetup:items Inventory[$(Slot)].components
#if nothing then kill item
execute if entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item,nbt={Item:{id:"minecraft:command_block",count:1,components:{"minecraft:custom_data":{tmp:1b}}}}] run kill @e[type=item,sort=nearest,limit=1,tag=unset_default_item,nbt={Item:{id:"minecraft:command_block",count:64}}]
#finish data set item can pick it up
data modify entity @e[type=item,sort=nearest,limit=1,tag=unset_default_item] PickupDelay set value 0
#remove tag
tag @e[type=item,sort=nearest,limit=1,tag=unset_default_item] remove unset_default_item