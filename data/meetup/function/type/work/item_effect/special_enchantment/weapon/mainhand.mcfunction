#Made By Fan_Fan_tom
#消除 un convert : 1b
item modify entity @s weapon.mainhand meetup:special_enchantment/weapon
#暫存器
summon item_display ~ ~ ~ {Tags:["tmp_weapon_item"],transformation:{left_rotation:[0f,0f,0f,0f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stone",count:1,components:{stored_enchantments:{}}}}
#轉移該物品ID
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.id set from entity @s SelectedItem.id
#轉移數量
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.count set from entity @s SelectedItem.count
#轉移所有components
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components set from entity @s SelectedItem.components
#設定手上的物品的 stored ench
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components."minecraft:stored_enchantments" merge from entity @s SelectedItem.components."minecraft:enchantments"
#刪除可食用
data remove entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components."minecraft:food"
data remove entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components."minecraft:consumable"
data remove entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components."minecraft:enchantable"
#隱藏附魔
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components."minecraft:enchantments".show_in_tooltip set value true
data modify entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] item.components."minecraft:stored_enchantments".show_in_tooltip set value false
#將暫存器儲存的物品轉移到玩家的手上
item replace entity @s weapon.mainhand from entity @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item] contents
#刪除暫存器
kill @e[type=item_display,sort=nearest,limit=1,distance=..1,tag=tmp_weapon_item]
#播放附魔聲音
playsound block.enchantment_table.use master @s ~ ~ ~ 1 1 1

