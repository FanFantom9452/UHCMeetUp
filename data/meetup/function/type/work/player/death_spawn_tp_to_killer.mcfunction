#Made By Fan_Fan_tom
#tmp
scoreboard players operation #tmp lastAttackerID = @s lastAttackerID
#find killer
execute as @a if score @s playerID = #tmp lastAttackerID run tag @s add killer

#tp
tp @s @a[tag=killer,sort=nearest,limit=1]

#reset
tag @a[tag=killer] remove killer