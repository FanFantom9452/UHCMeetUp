#Made By Fan_Fan_tom
#隨機分隊
#solo
execute if score teamCount command matches 1 run team join solo @a[team=!spec]
#teamMode
execute if score teamCount command matches 2.. run team join red @r[team=waiting]
execute if score teamCount command matches 2.. run team join aqua @r[team=waiting]
execute if score teamCount command matches 3.. run team join green @r[team=waiting]
execute if score teamCount command matches 4.. run team join yellow @r[team=waiting]
execute if score teamCount command matches 5.. run team join gold @r[team=waiting]
execute if score teamCount command matches 6.. run team join dark_aqua @r[team=waiting]
execute if score teamCount command matches 7.. run team join dark_blue @r[team=waiting]
execute if score teamCount command matches 8.. run team join dark_gray @r[team=waiting]
execute if score teamCount command matches 9.. run team join dark_green @r[team=waiting]
execute if score teamCount command matches 10.. run team join dark_purple @r[team=waiting]
execute if score teamCount command matches 11.. run team join dark_red @r[team=waiting]
execute if score teamCount command matches 12.. run team join blue @r[team=waiting]
execute if score teamCount command matches 13.. run team join gray @r[team=waiting]
execute if score teamCount command matches 14.. run team join pink @r[team=waiting]
execute if score teamCount command matches 15.. run team join white @r[team=waiting]
execute if score teamCount command matches 16.. run team join black @r[team=waiting]
#check if end
execute unless entity @a[team=waiting] run tellraw @a ["",{"text":"UHC","color":"gold"},{"text":" Meet Up ","color":"red"},{"text":"| ","color":"gray"},{"text":"隨機分隊完畢!"}]
#loop
execute if entity @a[team=waiting] run function meetup:type/work/random_team_working