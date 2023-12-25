#Respawn timer countdown and execution manage
#scoreboard players remove @a RespawnTime 1 
#execute as @a[scores={RespawnTime=0}] at @s run function spawn:tp_spawn

#Do bow delay timer here too
execute as @a at @s unless entity @s[scores={BowDelay=0}] run scoreboard players remove @s BowDelay 1
execute as @a at @s unless entity @s[scores={SpawnpointSet=0}] run scoreboard players remove @s SpawnpointSet 1

#Drops, boxes missile
execute as @e[name="Missile Drop"] at @s unless entity @s[scores={Timing=0}] run scoreboard players remove @s Timing 1
execute as @e[name="Missile Drop"] at @s if entity @s[scores={Timing=1200}] run summon item 41.90 19.00 -21.08 {Item: {id: "minecraft:firework_rocket", Count: 1}}
execute as @e[name="Missile Drop"] at @s if entity @s[scores={Timing=2400}] run summon item 69.90 19.00 -48.08 {Item: {id: "minecraft:firework_rocket", Count: 1}}
execute as @e[name="Missile Drop"] at @s if entity @s[scores={Timing=3600}] run summon item 42.90 19.00 -76.08 {Item: {id: "minecraft:firework_rocket", Count: 1}}
execute as @e[name="Missile Drop"] at @s if entity @s[scores={Timing=1}] run summon item 15.90 19.00 -49.08 {Item: {id: "minecraft:firework_rocket", Count: 1}}
execute as @e[name="Missile Drop"] at @s if entity @s[scores={Timing=0}] as @s run scoreboard players set @s Timing 4800

#Score if playing top dominate mode
execute positioned 40 33.00 -51 run scoreboard players add @a[x=40,dx=6,y=33,dy=3,z=-51,dz=6] KOTHTime 1
execute positioned -5 14 -96 run scoreboard players set @a[x=-5,dx=100,y=14,dy=17,z=-96,dz=100] KOTHTime 0
#5 objectives for time spent on top

#1st gives 4 points / 12*20
msg @a[scores={KOTHTime=1}] Stay up here for 12 seconds to get 4 points. The longer the capture, the more points you'll get.
scoreboard players add @a[scores={KOTHTime=240}] NetKD 4
msg @a[scores={KOTHTime=240}] Level 1 // 12 more seconds -- 12 points
 
#2nd gives 12 / 2*12*20
scoreboard players add @a[scores={KOTHTime=480}] NetKD 12
msg @a[scores={KOTHTime=480}] Level 2 // 12 more seconds -- 20 points

#3rd 20	/ '' 
scoreboard players add @a[scores={KOTHTime=720}] NetKD 20
msg @a[scores={KOTHTime=720}] Level 3 // 12 more seconds -- 28 points

#4th 28	 / ''	
scoreboard players add @a[scores={KOTHTime=960}] NetKD 28
msg @a[scores={KOTHTime=960}] Level 4 // 12 more seconds -- 36 points

#5th 36	/ ''
scoreboard players add @a[scores={KOTHTime=1200}] NetKD 36
msg @a[scores={KOTHTime=720}] Full Capture






execute as @a at @s if entity @s[scores={NetKD=100..}] run function heights:gameend


schedule function spawn:respawn 1t