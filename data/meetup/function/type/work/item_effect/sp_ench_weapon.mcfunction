#Made By Fan_Fan_tom

#把腹膜轉印的腹膜 轉移到 武器上面 且不附蓋舊附魔
summon item_display ~ ~ ~ {Tags:["item_mainhand"],transformation:{left_rotation:[0f,0f,0f,0f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stone",count:1,components:{enchantments:{}}}}
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] item.id set from entity @s SelectedItem.id
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] item.count set from entity @s SelectedItem.count
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] item.components set from entity @s SelectedItem.components
#execute if items entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] contents *[!enchantments|!enchantments={}] run data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] item.components."minecraft:enchantments" set value {levels:{}}
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] item.components."minecraft:enchantments" merge from entity @s SelectedItem.components."minecraft:enchantments"

data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] item.components."minecraft:enchantments" merge from entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments"
item replace entity @s weapon.mainhand from entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand] contents
kill @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=item_mainhand]


#clear
item replace entity @s weapon.offhand with air
playsound block.enchantment_table.use master @s ~ ~ ~ 1 1 1
