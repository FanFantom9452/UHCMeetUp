#地洞模式
execute as @a[tag=wait_to_create_hole] at @s if loaded ~ ~ ~ run tp @s ~ 20 ~
execute as @a[tag=wait_to_create_hole] at @s if loaded ~ ~ ~ run fill ~8 ~3 ~8 ~-8 ~ ~-8 air
execute as @a[tag=wait_to_create_hole] at @s if loaded ~ ~ ~ run effect give @s minecraft:glowing infinite 0 true
execute as @a[tag=wait_to_create_hole] at @s if loaded ~ ~ ~ run effect give @s minecraft:night_vision infinite 1 true
execute as @a[tag=wait_to_create_hole] at @s if loaded ~ ~ ~ run tag @s remove wait_to_create_hole
execute as @a[tag=wait_to_create_hole] at @s unless loaded ~ ~ ~ run schedule function meetup:type/start/spreadplayers/hole_mine 5t