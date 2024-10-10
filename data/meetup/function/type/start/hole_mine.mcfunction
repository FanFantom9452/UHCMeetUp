#地洞模式
execute as @a[gamemode=survival] at @s run teleport @s ~ 20 ~
execute as @a[gamemode=survival] at @s run fill ~8 ~3 ~8 ~-8 ~ ~-8 air
effect give @a[gamemode=survival] minecraft:glowing 99999 0 true
effect give @a minecraft:night_vision 99999 1 true

