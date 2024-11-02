#Made By Fan_Fan_tom
#分配玩家ID
execute as @a unless score @s playerID matches -2147483648..2147483647 run function meetup:type/work/player/player_id



#tick
scoreboard players enable @a[tag=admin] trigger
#管理員觸發安裝
execute if score status command matches 0 as @a[scores={trigger=9487945},tag=admin] at @s align xyz run function meetup:install

#剛加入遊戲的設定
execute if score status command matches 1 as @a[team=] at @s run function meetup:type/work/new_player_join
execute if score status command matches 1 run scoreboard players reset @a death

#偵測玩家人數
execute if score status command matches 1 store result score 玩家人數 list if entity @a[team=!spec]



#effect
execute if score status command matches 1 run effect give @a saturation infinite 1 true
execute if score status command matches 1 run effect give @a weakness infinite 1 true
execute if score status command matches 1 run effect give @a resistance infinite 4 true
execute if score status command matches 1 run effect give @a regeneration infinite 4 true

#大廳特效
execute if score status command matches 1 at @e[type=marker,tag=first_set] positioned ~ 300.25 ~ run particle end_rod ~ ~ ~ 10 0 10 0.005 2 force @a[distance=..50]

#setting
execute if score status command matches 1 at @e[type=marker,tag=first_set] if block ~ 303 ~ air run setblock ~ 303 ~ ender_chest
execute unless score status command matches 1 at @e[type=marker,tag=first_set] run setblock ~ 303 ~ air
#setting UI
execute if score status command matches 1 as @a[tag=admin] at @s if score @s page matches 1 run function meetup:type/work/ui/page/1/click
execute if score status command matches 1 as @a[tag=admin] at @s if score @s page matches 2 run function meetup:type/work/ui/page/2/click
execute if score status command matches 1 as @a[tag=admin] at @s if score @s page matches 3 run function meetup:type/work/ui/page/3/click

clear @a *[custom_data~{clear:1b}]
execute if score status command matches 1 as @e[type=item] if data entity @s Thrower run kill @s
scoreboard players reset @a[scores={trigger=1..}] trigger
#Loop
schedule function meetup:type/tick 1t