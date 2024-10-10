#Made By Fan_Fan_tom
#將初始物品還原預設
data remove storage meetup:items Inventory
clear @s
#hot bar
item replace entity @s hotbar.0 with diamond_sword 1
item replace entity @s hotbar.1 with iron_axe 1
item replace entity @s hotbar.2 with oak_planks 64
item replace entity @s hotbar.3 with bow 1
item replace entity @s hotbar.4 with diamond_pickaxe 1
item replace entity @s hotbar.5 with crossbow 1
item replace entity @s hotbar.6 with lava_bucket 1
item replace entity @s hotbar.7 with water_bucket 1
item replace entity @s hotbar.8 with golden_apple 5
#inventory
item replace entity @s inventory.0 with oak_planks 64
item replace entity @s inventory.1 with cobblestone 64
item replace entity @s inventory.2 with cobblestone 64
item replace entity @s inventory.3 with book 3
item replace entity @s inventory.4 with lapis_lazuli 32
item replace entity @s inventory.5 with lava_bucket 1
item replace entity @s inventory.6 with water_bucket 1
item replace entity @s inventory.7 with grindstone 1
item replace entity @s inventory.8 with anvil 1
item replace entity @s inventory.9 with enchanting_table 1
item replace entity @s inventory.10 with arrow 32
#armor
item replace entity @s armor.head with iron_helmet 1
item replace entity @s armor.chest with iron_chestplate 1
item replace entity @s armor.legs with iron_leggings 1
item replace entity @s armor.feet with iron_boots 1

#offhand
item replace entity @s weapon.offhand with shield 1

#armor book
function meetup:type/item/armor_book


#save items to storage
data modify storage meetup:items Inventory set from entity @s Inventory
#msg
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"已還原至初始設定裝備"}]