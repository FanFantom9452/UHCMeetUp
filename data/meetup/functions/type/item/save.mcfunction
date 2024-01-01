#Made By Fan_Fan_tom
data remove storage meetup:items Inventory
data modify storage meetup:items Inventory set from entity @s Inventory
clear @s


#msg
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"已成功儲存初始裝備"}]