#Made By Fan_Fan_tom
#延遲安裝 / 讀取完就安裝
execute at @a[tag=tmp.installer,sort=furthest,limit=1] if loaded ~ ~ ~ run function meetup:install
execute at @a[tag=tmp.installer,sort=furthest,limit=1] unless loaded ~ ~ ~ run schedule function meetup:type/work/delay_install_game 10t