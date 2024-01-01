function fantomsmp:type/work/maho/magic_attack2

scoreboard players add @s command 1
particle flash ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if score @s command matches ..4 run playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 0.5
execute if score @s[tag=01_boss] command matches 5 run function fantomsmp:type/boss/01_boss
execute if score @s command matches 5.. run kill @s
