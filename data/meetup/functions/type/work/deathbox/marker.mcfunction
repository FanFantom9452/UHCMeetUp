tag @s remove chest_blocked
gamemode spectator @s

execute if block ~ ~ ~ chest run tag @s add chest_blocked
execute if block ~-1 ~ ~ chest run tag @s add chest_blocked
execute if entity @s[tag=chest_blocked] positioned ~ ~1 ~ run function meetup:type/work/deathbox/marker

execute unless block ~ ~ ~ chest unless block ~-1 ~ ~ chest run function meetup:type/work/deathbox/chest