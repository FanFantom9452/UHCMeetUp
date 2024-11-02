#Made By Fan_Fan_tom
advancement revoke @s only meetup:timebomb_killed_player

#先記錄被炸死的人
scoreboard players operation #tmpTimeBomb lastAttackerID = @e[type=creeper,tag=death_chest,sort=nearest,limit=1] lastAttackerID
#找誰是擊殺者
execute as @a if score @s playerID = #tmpTimeBomb lastAttackerID run tag @s add timebomb.killer

#加分
scoreboard players add @a[tag=timebomb.killer] kill 1

#重製
tag @a[tag=timebomb.killer] remove timebomb.killer