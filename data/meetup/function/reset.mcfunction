#Made By Fan_Fan_tom
tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"|","color":"gray"},{"text":" 正在重置遊戲...","color":"yellow"}]
function meetup:uninstall
tag @r add tmp.installer
spreadplayers ~ ~ 100000 100000 false @a[tag=tmp.installer]
schedule function meetup:type/work/delay_install_game 10t
