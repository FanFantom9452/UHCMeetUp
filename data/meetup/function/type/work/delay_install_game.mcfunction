#Made By Fan_Fan_tom
#延遲安裝
execute at @a[tag=tmp.installer,sort=furthest,limit=1] run function meetup:install
tag @a remove tmp.installer

