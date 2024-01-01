#Made By Fan_Fan_tom
#遊戲結束
#solo
execute if score teamCount command matches 1 if score 剩餘人數 list matches 1 run function meetup:type/work/game_result/solo_mode

#勝利
#team mode
execute if score teamCount command matches 2..16 if score 剩餘隊伍 list matches 1 run function meetup:type/work/game_result/team_mode

#沒有參賽者
#non random team
execute unless entity @a[team=!spec] run function meetup:type/work/game_result/noone_in_the_fight



