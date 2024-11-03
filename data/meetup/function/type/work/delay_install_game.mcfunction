#Made By Fan_Fan_tom
#延遲安裝 / 讀取完就安裝
execute at @a[tag=tmp.installer,sort=furthest,limit=1] if loaded ~ ~ ~ run function meetup:install
execute at @a[tag=tmp.installer,sort=furthest,limit=1] unless loaded ~ ~ ~ run tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" 正在加載新地圖區域 請稍等...","color":"yellow"}]
execute at @a[tag=tmp.installer,sort=furthest,limit=1] unless loaded ~ ~ ~ run schedule function meetup:type/work/delay_install_game 1s