#tp to location
clear @s
tp @s[team=Red] -51 80 -51
tp @s[team=Green] 50 80 50
tp @s[team=Yellow] -51 80 50
tp @s[team=Blue] 50 80 -51
execute as @s run function heights:layout

scoreboard players set @s SpawnpointSet 140





