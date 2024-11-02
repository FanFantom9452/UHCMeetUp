#Made By Fan_Fan_tom
#給予容器中的所有物品
clear @s
xp set @s 87 levels
function meetup:type/item/item_creater/input {Slot:0,replaceSlot:"hotbar.0"}
function meetup:type/item/item_creater/input {Slot:1,replaceSlot:"hotbar.1"}
function meetup:type/item/item_creater/input {Slot:2,replaceSlot:"hotbar.2"}
function meetup:type/item/item_creater/input {Slot:3,replaceSlot:"hotbar.3"}
function meetup:type/item/item_creater/input {Slot:4,replaceSlot:"hotbar.4"}
function meetup:type/item/item_creater/input {Slot:5,replaceSlot:"hotbar.5"}
function meetup:type/item/item_creater/input {Slot:6,replaceSlot:"hotbar.6"}
function meetup:type/item/item_creater/input {Slot:7,replaceSlot:"hotbar.7"}
function meetup:type/item/item_creater/input {Slot:8,replaceSlot:"hotbar.8"}
function meetup:type/item/item_creater/input {Slot:9,replaceSlot:"inventory.0"}
function meetup:type/item/item_creater/input {Slot:10,replaceSlot:"inventory.1"}
function meetup:type/item/item_creater/input {Slot:11,replaceSlot:"inventory.2"}
function meetup:type/item/item_creater/input {Slot:12,replaceSlot:"inventory.3"}
function meetup:type/item/item_creater/input {Slot:13,replaceSlot:"inventory.4"}
function meetup:type/item/item_creater/input {Slot:14,replaceSlot:"inventory.5"}
function meetup:type/item/item_creater/input {Slot:15,replaceSlot:"inventory.6"}
function meetup:type/item/item_creater/input {Slot:16,replaceSlot:"inventory.7"}
function meetup:type/item/item_creater/input {Slot:17,replaceSlot:"inventory.8"}
function meetup:type/item/item_creater/input {Slot:18,replaceSlot:"inventory.9"}
function meetup:type/item/item_creater/input {Slot:19,replaceSlot:"inventory.10"}
function meetup:type/item/item_creater/input {Slot:20,replaceSlot:"inventory.11"}
function meetup:type/item/item_creater/input {Slot:21,replaceSlot:"inventory.12"}
function meetup:type/item/item_creater/input {Slot:22,replaceSlot:"inventory.13"}
function meetup:type/item/item_creater/input {Slot:23,replaceSlot:"inventory.14"}
function meetup:type/item/item_creater/input {Slot:24,replaceSlot:"inventory.15"}
function meetup:type/item/item_creater/input {Slot:25,replaceSlot:"inventory.16"}
function meetup:type/item/item_creater/input {Slot:26,replaceSlot:"inventory.17"}
function meetup:type/item/item_creater/input {Slot:27,replaceSlot:"inventory.18"}
function meetup:type/item/item_creater/input {Slot:28,replaceSlot:"inventory.19"}
function meetup:type/item/item_creater/input {Slot:29,replaceSlot:"inventory.20"}
function meetup:type/item/item_creater/input {Slot:30,replaceSlot:"inventory.21"}
function meetup:type/item/item_creater/input {Slot:31,replaceSlot:"inventory.22"}
function meetup:type/item/item_creater/input {Slot:32,replaceSlot:"inventory.23"}
function meetup:type/item/item_creater/input {Slot:33,replaceSlot:"inventory.24"}
function meetup:type/item/item_creater/input {Slot:34,replaceSlot:"inventory.25"}
function meetup:type/item/item_creater/input {Slot:35,replaceSlot:"inventory.26"}
function meetup:type/item/item_creater/input {Slot:-106,replaceSlot:"weapon.offhand"}
function meetup:type/item/item_creater/input {Slot:100,replaceSlot:"armor.feet"}
function meetup:type/item/item_creater/input {Slot:101,replaceSlot:"armor.legs"}
function meetup:type/item/item_creater/input {Slot:102,replaceSlot:"armor.chest"}
function meetup:type/item/item_creater/input {Slot:103,replaceSlot:"armor.head"}

#msg
tellraw @s ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"已領取初始裝備"}]
#清除指令方塊
clear @s command_block