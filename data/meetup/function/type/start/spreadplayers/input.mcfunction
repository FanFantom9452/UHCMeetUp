#開始遊戲
#隨機TP
#取地圖大小 限制玩家隨機傳送最遠距離不超過地圖大小 spreadplayer maxRange 是 地圖大小 / 2
execute store result storage meetup:spread maxRange int 0.5 run scoreboard players get map_size command
execute store result score #spreadDistance command run data get storage meetup:spread maxRange 1
#每隊玩家分散距離 單人就除玩家數 隊伍就除隊伍數
execute if score teamCount command matches 2.. run scoreboard players operation #spreadDistance command /= teamCount command
execute if score teamCount command matches 1 store result score #tmp_player_amount command if entity @a[team=!spec]
execute if score teamCount command matches 1 run scoreboard players operation #spreadDistance command /= #tmp_player_amount command
#避免場地有水太多 所以距離再縮短一些 所以*0.8
execute store result storage meetup:spread spreadDistance int 0.8 run scoreboard players get #spreadDistance command
#隊伍模式的話 就讓分散後同隊的在一起 單人就是隊伍分開分散(FFA)
execute if score teamCount command matches 1 run data modify storage meetup:spread teamModeTF set value "false"
execute if score teamCount command matches 2.. run data modify storage meetup:spread teamModeTF set value "true"
#執行分散玩家
function meetup:type/start/spreadplayers/work with storage meetup:spread