scoreboard players add @e[type=minecraft:fireball] TH_p_life 1
#Removes armor stand after falling
execute as @e[type=armor_stand,tag=for_explo] at @s unless block ~ ~-1 ~ air run scoreboard players add @s TH_p_life 80
execute as @e[type=armor_stand,tag=for_explo] at @s run scoreboard players add @s TH_p_life 1

execute as @e[type=minecraft:fireball,scores={TH_p_life=80}] run kill @s
execute as @e[tag=for_explo,type=minecraft:armor_stand,scores={TH_p_life=1200..}] at @s run kill @s

execute as @a[nbt={SelectedItem: {id: "minecraft:snowball", tag: {display:{Name:'{"text":"High Explosive","color":"dark_green"}'}}}}] run tag @s add holding_explo
execute as @a[tag=holding_explo,scores={TH_use_snowball=1}] run tag @s add thrown_explo
execute as @e[tag=thrown_explo] at @s positioned as @s run tag @e[type=snowball,sort=nearest,limit=1] add is_explo
tag @e remove thrown_explo

execute as @e[type=snowball,tag=is_explo] at @s run kill @e[tag=explo_proj,distance=..2]
execute as @e[type=snowball,tag=is_explo] at @s unless score @s ArmorStand matches 1 store success score @s ArmorStand run summon armor_stand ~ ~ ~ {Invisible: 1b, Marker: 1, Tags: [for_explo]}

execute as @e[type=snowball,tag=is_explo] at @s store result score @e[limit=1,type=armor_stand,tag=for_explo,sort=nearest,distance=..2] Motion0 run data get entity @s Motion[0] 128
execute as @e[type=snowball,tag=is_explo] at @s store result score @e[limit=1,type=armor_stand,tag=for_explo,sort=nearest,distance=..2] Motion1 run data get entity @s Motion[1] 128
execute as @e[type=snowball,tag=is_explo] at @s store result score @e[limit=1,type=armor_stand,tag=for_explo,sort=nearest,distance=..2] Motion2 run data get entity @s Motion[2] 128

#execute as @e[type=snowball] at @s store result score groxen_nin Motion0 run data get entity @s Motion[0]
#execute as @e[type=snowball] at @s store result score groxen_nin Motion1 run data get entity @s Motion[1]
#execute as @e[type=snowball] at @s store result score groxen_nin Motion2 run data get entity @s Motion[2]
		 
execute as @e[type=armor_stand,tag=for_explo] at @s store result entity @e[type=fireball,limit=1,sort=nearest,distance=..2] Motion[0] double 0.0078 run scoreboard players get @s Motion0
execute as @e[type=armor_stand,tag=for_explo] at @s store result entity @e[type=fireball,limit=1,sort=nearest,distance=..2] Motion[1] double 0.0078 run scoreboard players get @s Motion1
execute as @e[type=armor_stand,tag=for_explo] at @s store result entity @e[type=fireball,limit=1,sort=nearest,distance=..2] Motion[2] double 0.0078 run scoreboard players get @s Motion2
		 
# execute as @e[type=snowball] at @s store result entity @e[limit=1, type=armor_stand,tag=for_explo,distance=..1] 
execute as @e[tag=explo_proj] at @s run summon minecraft:fireball ~ ~ ~ {Fire: 20, ExplosionPower: 5, power: [10.0d, 10.0d, 10.0d]}

kill @e[tag=explo_proj]
execute as @e[type=snowball,tag=is_explo] at @s run summon minecraft:fireball ~ ~ ~ {Fire: 20, ExplosionPower: 2, Tags: [explo_proj]}
execute as @e[type=snowball,tag=is_explo] at @s run tp @e[type=minecraft:armor_stand,sort=nearest,distance=..2,tag=for_explo] @s

execute as @a[tag=holding_explo] unless data entity @s {SelectedItem: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"High Explosive","color":"dark_green"}'}}}} run tag @a remove holding_explo

scoreboard players set @a[tag=!holding_smoke] TH_use_snowball 0