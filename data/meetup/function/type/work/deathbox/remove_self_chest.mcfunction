#remove chest
fill ~ ~ ~ ~-1 ~ ~ air replace chest
#remove countdown text
kill @e[type=text_display,tag=timer.death_chest,sort=nearest,limit=1]

#mode time bomb
data modify storage meetup:mode/timebomb text set from entity @s CustomName
data modify storage meetup:mode/timebomb playerName set from entity @s data.text
execute store result storage meetup:mode/timebomb killerID int 1 run scoreboard players get @s lastAttackerID
execute if score mode.timebomb command matches 2 run function meetup:type/work/deathbox/timebomb with storage meetup:mode/timebomb

#kill marker (self)
kill @s