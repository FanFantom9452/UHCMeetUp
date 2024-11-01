#Made By Fan_Fan_tom
$worldborder set $(map_size)
scoreboard players set borderLevel border_time 0
scoreboard players set ing border_time 0
$scoreboard players set border_time border_time $(next_border_time)
$bossbar set border_time max $(next_border_time)
$schedule function meetup:type/work/border/start/input $(next_border_time)s