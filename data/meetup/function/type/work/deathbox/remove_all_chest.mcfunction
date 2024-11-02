execute at @e[type=marker,tag=death_chest] run fill ~ ~ ~ ~-1 ~ ~ air replace chest
kill @e[type=marker,tag=death_chest]
kill @e[type=text_display,tag=timer.death_chest]