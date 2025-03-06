# UHCMeetUp
Minecraft UHC Meet Up Datapack

https://forum.gamer.com.tw/C.php?bsn=18673&snA=200818&tnum=1



# TODO 自訂地形 (讓地形不要影響PVP的優劣過大)
https://www.youtube.com/watch?v=NDvdtfxwuj4
https://www.youtube.com/watch?v=FQfoPwPMS80&list=PL3Xifq3OZly6SQwJ8TIJ1OVDgyfbWT-9z&index=10
https://www.youtube.com/watch?v=FFyt7eX4fac&list=PLLMXBYd7a-yfjqz1gOlKDzDpcE7-wgipG&index=27

# note (末天提供)
Minecraft 的地形生成順序是先決定起伏再分配生態域位置
要改變起伏設定的話要修改 noise_settings 的檔案
控制起伏的是 noise_settings/foo.json -> noise_router -> final_density
而這東西在原版是一大坨 density function 疊起來的
boimes 的那些參數是用來控制他們如何依據 noise router 中設定的那六個同名的 noise map 數值選擇位置