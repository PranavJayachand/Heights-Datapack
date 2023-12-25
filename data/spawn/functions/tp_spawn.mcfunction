# TPs player to their spawn
execute as @a[scores={SpawnpointSet=0}] run scoreboard players set @s SpawnpointSet -1


# Blue 
execute if entity @s[team=Blue,scores={Spawn=1}] as @s run tp @s 45 66 -45
execute if entity @s[team=Blue,scores={Spawn=2}] as @s run tp @s 46 66 -31
execute if entity @s[team=Blue,scores={Spawn=3}] as @s run tp @s 42 66 -20
execute if entity @s[team=Blue,scores={Spawn=4}] as @s run tp @s 31 66 -46
execute if entity @s[team=Blue,scores={Spawn=5}] as @s run tp @s 29 66 -29
execute if entity @s[team=Blue,scores={Spawn=6}] as @s run tp @s 29 66 -11
execute if entity @s[team=Blue,scores={Spawn=7}] as @s run tp @s 20 66 -42
execute if entity @s[team=Blue,scores={Spawn=8}] as @s run tp @s 11 66 -29
execute if entity @s[team=Blue,scores={Spawn=9}] as @s run tp @s 19 66 -19


# Yellow
execute if entity @s[team=Yellow,scores={Spawn=1}] as @s run tp @s -45 66 45
execute if entity @s[team=Yellow,scores={Spawn=2}] as @s run tp @s -46 66 31
execute if entity @s[team=Yellow,scores={Spawn=3}] as @s run tp @s -42 66 20
execute if entity @s[team=Yellow,scores={Spawn=4}] as @s run tp @s -31 66 46
execute if entity @s[team=Yellow,scores={Spawn=5}] as @s run tp @s -29 66 29
execute if entity @s[team=Yellow,scores={Spawn=6}] as @s run tp @s -29 66 11
execute if entity @s[team=Yellow,scores={Spawn=7}] as @s run tp @s -20 66 42
execute if entity @s[team=Yellow,scores={Spawn=8}] as @s run tp @s -11 66 29
execute if entity @s[team=Yellow,scores={Spawn=9}] as @s run tp @s -19 66 19

# Green
execute if entity @s[team=Green,scores={Spawn=1}] as @s run tp @s 44 66 44
execute if entity @s[team=Green,scores={Spawn=2}] as @s run tp @s 30 66 45
execute if entity @s[team=Green,scores={Spawn=3}] as @s run tp @s 19 66 41
execute if entity @s[team=Green,scores={Spawn=4}] as @s run tp @s 45 66 30
execute if entity @s[team=Green,scores={Spawn=5}] as @s run tp @s 28 66 28
execute if entity @s[team=Green,scores={Spawn=6}] as @s run tp @s 10 66 28
execute if entity @s[team=Green,scores={Spawn=7}] as @s run tp @s 41 66 19
execute if entity @s[team=Green,scores={Spawn=8}] as @s run tp @s 28 66 10
execute if entity @s[team=Green,scores={Spawn=9}] as @s run tp @s 18 66 18


# Red
execute if entity @s[team=Red,scores={Spawn=1}] as @s run tp @s -45 66 -45
execute if entity @s[team=Red,scores={Spawn=2}] as @s run tp @s -31 66 -46
execute if entity @s[team=Red,scores={Spawn=3}] as @s run tp @s -20 66 -42
execute if entity @s[team=Red,scores={Spawn=4}] as @s run tp @s -46 66 -31
execute if entity @s[team=Red,scores={Spawn=5}] as @s run tp @s -29 66 -29
execute if entity @s[team=Red,scores={Spawn=6}] as @s run tp @s -11 66 -29
execute if entity @s[team=Red,scores={Spawn=7}] as @s run tp @s -42 66 -20
execute if entity @s[team=Red,scores={Spawn=8}] as @s run tp @s -29 66 -11
execute if entity @s[team=Red,scores={Spawn=9}] as @s run tp @s -19 66 -19
