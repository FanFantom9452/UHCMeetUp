#Made By Fan_Fan_tom
function meetup:uninstall
tag @r add tmp.installer
spreadplayers ~ ~ 100000 100000 false @a[tag=tmp.installer]
schedule function meetup:type/work/delay_install_game 10t
