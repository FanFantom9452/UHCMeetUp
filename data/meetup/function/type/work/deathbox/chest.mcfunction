#生成標記點
summon marker ~ ~ ~ {Tags:["death_chest"]}
#取得玩家名字 並且設定到箱子GUI上面
tag @s add me
setblock ~ ~ ~ chest[type=right,facing=north]
setblock ~-1 ~ ~ chest[type=left,facing=north]
setblock ~ ~1 ~ oak_sign{front_text:{messages:['[{"selector":"@p[tag=me]"},{"text":"的死亡箱子","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
#copy player name
setblock ~-1 ~1 ~ barrel
execute as @p[tag=me] run loot replace block ~-1 ~1 ~ container.0 loot meetup:player_name
data modify entity @e[type=marker,tag=death_chest,sort=nearest,limit=1] CustomName set from block ~-1 ~1 ~ Items[{Slot:0b}].components."minecraft:custom_name"
data modify entity @e[type=marker,tag=death_chest,sort=nearest,limit=1] data.text set from block ~-1 ~1 ~ Items[{Slot:0b}].components."minecraft:profile".name
execute store result score @e[type=marker,tag=death_chest,sort=nearest,limit=1] lastAttackerID run scoreboard players get @p[tag=me] playerID
setblock ~-1 ~1 ~ air
data modify block ~ ~ ~ CustomName set from block ~ ~1 ~ front_text.messages[0]
setblock ~ ~1 ~ air
tag @s remove me

#將死亡玩家的物品轉移到箱子
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
#轉移完成後清除背包物品
clear @s

#golden Head
execute if score mode.golden_head command matches 2 run loot replace block ~-1 ~ ~ container.26 loot meetup:golden_head/normal
execute if score mode.golden_head command matches 4 run loot replace block ~-1 ~ ~ container.26 loot meetup:golden_head/fast
execute if score mode.golden_head command matches 6 run loot replace block ~-1 ~ ~ container.26 loot meetup:golden_head/double