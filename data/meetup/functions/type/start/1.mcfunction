#倒數
execute as @a at @s run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1
title @a times 0 100 0
title @a subtitle {"text":"1","color":"red"}
title @a title "§6§lUHC §c§lMeet Up"


#清除上面場地
execute at @e[type=marker,tag=first_set] run fill ~15 300 ~15 ~-15 305 ~-15 air
execute at @e[type=marker,tag=first_set] run setblock ~ 303 ~ bedrock

