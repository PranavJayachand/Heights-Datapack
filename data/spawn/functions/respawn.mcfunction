#Respawn timer countdown and execution manage
#scoreboard players remove @a RespawnTime 1 
#execute as @a[scores={RespawnTime=0}] at @s run function spawn:tp_spawn

#Do bow delay timer here too
execute as @a at @s unless entity @s[scores={BowDelay=0}] run scoreboard players remove @s BowDelay 1
execute as @a at @s unless entity @s[scores={SpawnpointSet=0}] run scoreboard players remove @s SpawnpointSet 1

# Strange stuff with flashbang indicators, yet to be implemented
execute as @a at @s unless entity @s[scores={Flash=0}] run scoreboard players remove @s Flash 1
execute as @a at @s if entity @s[scores={Flash=0}] run scoreboard players set @s Flash 3

#Score if playing top dominate mode
scoreboard players set @a contested 0
#execute store result score @a contested if entity @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure]

execute if entity @a[team=Blue,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players add @a contested 1
execute if entity @a[team=Red,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players add @a contested 1
execute if entity @a[team=Yellow,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players add @a contested 1
execute if entity @a[team=Green,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players add @a contested 1

execute as @a[team=Blue,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={KOTHTime=1..}] at @s run scoreboard players operation Blue KOTHTime = @s KOTHTime
execute as @a[team=Red,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={KOTHTime=1..}] at @s run scoreboard players operation Red KOTHTime = @s KOTHTime
execute as @a[team=Yellow,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={KOTHTime=1..}] at @s run scoreboard players operation Yellow KOTHTime = @s KOTHTime
execute as @a[team=Green,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={KOTHTime=1..}] at @s run scoreboard players operation Green KOTHTime = @s KOTHTime

execute as @a[team=Blue] at @s run scoreboard players operation @s KOTHTime = Blue KOTHTime
execute as @a[team=Red] at @s run scoreboard players operation @s KOTHTime = Red KOTHTime
execute as @a[team=Yellow] at @s run scoreboard players operation @s KOTHTime = Yellow KOTHTime
execute as @a[team=Green] at @s run scoreboard players operation @s KOTHTime = Green KOTHTime

execute positioned 40 33.00 -51 run scoreboard players add @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={contested=1}] KOTHTime 1
execute if entity @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={contested=2..}] run title @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={contested=2..}] actionbar {"text":"Control Point Contested!","bold":true,"color":"#FFFFFF"}
execute if entity @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={contested=2..}] run xp add @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={Flash=0}] 5 points
execute if entity @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={contested=2..}] run xp add @a[x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure,scores={Flash=3}] -5 points
execute as @a[scores={contested=..1}] at @s run xp set @s 0 points

#execute positioned -5 14 -96 run scoreboard players set @a[x=-54,dx=108,y=64,dy=18,z=-54,dz=108] KOTHTime 0
execute unless entity @a[team=Blue,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players set Blue KOTHTime 0
execute unless entity @a[team=Red,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players set Red KOTHTime 0
execute unless entity @a[team=Yellow,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players set Yellow KOTHTime 0
execute unless entity @a[team=Green,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,gamemode=adventure] run scoreboard players set Green KOTHTime 0

#5 objectives for time spent on top

execute if entity @p[scores={KOTHTime=1..240,contested=1}] run data merge entity @e[type=armor_stand,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,limit=1] {CustomName: "\"Control Percent: 0%\""}
execute if entity @p[scores={KOTHTime=1..5,contested=1}] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 100 2

#1st gives 4 points / 12*20

#makes xp track koth
execute as @a at @s run scoreboard players operation @s KOTHTimeO100 = @s KOTHTime
execute as @a at @s run scoreboard players operation @s KOTHTimeO100 /= Twelve Twelve
#execute at @a as @s store result score @s KOTHTime0100 run scoreboard players operation @s KOTHTime /= Twelve Twelve
execute as @a store result score @s xpStore run data get entity @s XpLevel
execute as @a if score @s xpStore > @s KOTHTimeO100 run xp add @s -1 levels
execute as @a if score @s xpStore < @s KOTHTimeO100 run xp add @s 1 levels


#scoreboard players add @a[scores={KOTHTime=240}] NetKD 4
execute if entity @a[scores={KOTHTime=240..480,contested=1}] run data merge entity @e[name="Control Percent: 0%",type=armor_stand,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,limit=1,tag=site_stand] {CustomName: "\"Control Percent: 20%\""}

#//change to titles //

execute if score Blue KOTHTime matches 240 if score @a[limit=1] contested matches 1 run say 20% Blue control...
execute if score Yellow KOTHTime matches 240 if score @a[limit=1] contested matches 1 run say 20% Yellow control...
execute if score Green KOTHTime matches 240 if score @a[limit=1] contested matches 1 run say 20% Green control...
execute if score Red KOTHTime matches 240 if score @a[limit=1] contested matches 1 run say 20% Red control...


execute if entity @a[scores={KOTHTime=240,contested=1}] run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 250 0
 
#2nd gives 12 / 2*12*20
#scoreboard players add @a[scores={KOTHTime=480}] NetKD 12
execute if entity @a[scores={KOTHTime=480,contested=1}] run data merge entity @e[name="Control Percent: 20%",type=armor_stand,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,limit=1,tag=site_stand] {CustomName: "\"Control Percent: 40%\""}

execute if score Blue KOTHTime matches 480 if score @a[limit=1] contested matches 1 run say 40% Blue control...
execute if score Yellow KOTHTime matches 480 if score @a[limit=1] contested matches 1 run say 40% Yellow control...
execute if score Green KOTHTime matches 480 if score @a[limit=1] contested matches 1 run say 40% Green control...
execute if score Red KOTHTime matches 480 if score @a[limit=1] contested matches 1 run say 40% Red control...

execute if entity @a[scores={KOTHTime=480,contested=1}] run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 250 0.5


#3rd 20	/ '' 
#scoreboard players add @a[scores={KOTHTime=720}] NetKD 20
execute if entity @a[scores={KOTHTime=720,contested=1}] run data merge entity @e[name="Control Percent: 40%",type=armor_stand,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,limit=1,tag=site_stand] {CustomName: "\"Control Percent: 60%\""}

execute if score Blue KOTHTime matches 720 if score @a[limit=1] contested matches 1 run say 60% Blue control...
execute if score Yellow KOTHTime matches 720 if score @a[limit=1] contested matches 1 run say 60% Yellow control...
execute if score Green KOTHTime matches 720 if score @a[limit=1] contested matches 1 run say 60% Green control...
execute if score Red KOTHTime matches 720 if score @a[limit=1] contested matches 1 run say 60% Red control...

execute if entity @a[scores={KOTHTime=720,contested=1}] run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 250 1

#4th 28	 / ''	
#scoreboard players add @a[scores={KOTHTime=960}] NetKD 28
execute if entity @a[scores={KOTHTime=960,contested=1}] run data merge entity @e[name="Control Percent: 60%",type=armor_stand,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,limit=1,tag=site_stand] {CustomName: "\"Control Percent: 80%\""}

execute if score Blue KOTHTime matches 960 if score @a[limit=1] contested matches 1 run say 80% Blue control...
execute if score Yellow KOTHTime matches 960 if score @a[limit=1] contested matches 1 run say 80% Yellow control...
execute if score Green KOTHTime matches 960 if score @a[limit=1] contested matches 1 run say 80% Green control...
execute if score Red KOTHTime matches 960 if score @a[limit=1] contested matches 1 run say 80% Red control...

execute if entity @a[scores={KOTHTime=960,contested=1}] run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 250 1.5

#5th 36	/ ''
#scoreboard players add @a[scores={KOTHTime=1200}] NetKD 36
execute if entity @a[scores={KOTHTime=1200,contested=1}] run data merge entity @e[name="Control Percent: 80%",type=armor_stand,x=-4,dx=7,y=84,dy=4,z=-4,dz=7,limit=1,tag=site_stand] {CustomName: "\"Control Percent: 0%\""}

execute if score Blue KOTHTime matches 1200 if score @a[limit=1] contested matches 1 run say 100% Blue control...
execute if score Yellow KOTHTime matches 1200 if score @a[limit=1] contested matches 1 run say 100% Yellow control...
execute if score Green KOTHTime matches 1200 if score @a[limit=1] contested matches 1 run say 100% Green control...
execute if score Red KOTHTime matches 1200 if score @a[limit=1] contested matches 1 run say 100% Red control...

execute if entity @a[scores={KOTHTime=1200,contested=1}] run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 250 2

execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.0 with air
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.1 with air
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.2 with air
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.3 with air
																
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.4 with red_concrete{display: {Name: '[{"text":"Join Red","italic":true}]'}}
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.5 with blue_concrete{display: {Name: '[{"text":"Join Blue","italic":true}]'}}
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.6 with green_concrete{display: {Name: '[{"text":"Join Green","italic":true}]'}}
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.7 with yellow_concrete{display: {Name: '[{"text":"Join Yellow","italic":true}]'}}
execute as @a[scores={InGame=0}] at @s run item replace entity @s hotbar.8 with gray_concrete{display: {Name: '[{"text":"Spectate","italic":true}]'}}

execute as @a[team=!Red,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:red_concrete"}}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
execute as @a[team=!Red,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:red_concrete"}}] run team join Red @s

execute as @a[team=!Blue,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:blue_concrete"}}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
execute as @a[team=!Blue,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:blue_concrete"}}] run team join Blue @s

execute as @a[team=!Green,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:green_concrete"}}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
execute as @a[team=!Green,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:green_concrete"}}] run team join Green @s

execute as @a[team=!Yellow,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:yellow_concrete"}}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
execute as @a[team=!Yellow,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:yellow_concrete"}}] run team join Yellow @s

execute as @a[team=!Spectator,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:gray_concrete"}}] run playsound minecraft:block.conduit.deactivate player @s ~ ~ ~ 50 2
execute as @a[team=!Spectator,scores={InGame=0},nbt={SelectedItem: {id: "minecraft:gray_concrete"}}] run team join Spectator @s

execute if entity @a[scores={KOTHTime=1200..}] run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 100 .7
execute as @a at @s if entity @s[scores={KOTHTime=1200..}] run function heights:gameend