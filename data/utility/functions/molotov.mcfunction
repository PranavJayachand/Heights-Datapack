scoreboard players add @e[type=minecraft:dragon_fireball] TH_p_life 1

#Removes armor stand after falling
execute as @e[type=armor_stand,tag=for_molly] at @s unless block ~ ~-1 ~ air run scoreboard players add @s TH_p_life 80
execute as @e[type=armor_stand,tag=for_molly] at @s run scoreboard players add @s TH_p_life 1

execute as @e[type=minecraft:dragon_fireball,scores={TH_p_life=80}] run kill @s
execute as @e[type=minecraft:armor_stand,tag=for_molly,scores={TH_p_life=1200..}] at @s run kill @s

execute as @e[nbt={SelectedItem: {id: "minecraft:egg", tag: {display: {Name: '{"text":"Molotov","color":"dark_purple"}'}}}}] run tag @s add holding_molly
execute as @e[tag=holding_molly,scores={TH_use_egg=1}] run tag @s add thrown_molly
execute as @e[tag=thrown_molly] at @s positioned as @s run tag @e[type=egg,sort=nearest,limit=1] add is_molly
tag @e remove thrown_molly

execute as @e[type=egg,tag=is_molly] at @s run kill @e[tag=molly_proj,distance=..2]
execute as @e[type=egg,tag=is_molly] at @s unless score @s ArmorStand matches 1 store success score @s ArmorStand run summon armor_stand ~ ~ ~ {Invisible: 1b, Marker: 1, Tags: [for_molly]}

execute as @e[type=egg,tag=is_molly] at @s store result score @e[limit=1,type=armor_stand,tag=for_molly,sort=nearest,distance=..2] Motion0 run data get entity @s Motion[0] 128
execute as @e[type=egg,tag=is_molly] at @s store result score @e[limit=1,type=armor_stand,tag=for_molly,sort=nearest,distance=..2] Motion1 run data get entity @s Motion[1] 128
execute as @e[type=egg,tag=is_molly] at @s store result score @e[limit=1,type=armor_stand,tag=for_molly,sort=nearest,distance=..2] Motion2 run data get entity @s Motion[2] 128
		 
execute as @e[type=armor_stand,tag=for_molly] at @s store result entity @e[type=dragon_fireball,limit=1,sort=nearest,distance=..2] Motion[0] double 0.0078 run scoreboard players get @s Motion0
execute as @e[type=armor_stand,tag=for_molly] at @s store result entity @e[type=dragon_fireball,limit=1,sort=nearest,distance=..2] Motion[1] double 0.0078 run scoreboard players get @s Motion1
execute as @e[type=armor_stand,tag=for_molly] at @s store result entity @e[type=dragon_fireball,limit=1,sort=nearest,distance=..2] Motion[2] double 0.0078 run scoreboard players get @s Motion2		 
		 
# execute as @e[type=egg,tag=is_molly] at @s store result entity @e[limit=1, type=armor_stand,name=for_molly,distance=..1] 
execute as @e[tag=molly_proj] at @s run summon minecraft:dragon_fireball ~ ~ ~

kill @e[tag=molly_proj]
execute as @e[type=egg,tag=is_molly] at @s run summon minecraft:dragon_fireball ~ ~ ~ {Tags: [molly_proj]}
execute as @e[type=egg,tag=is_molly] at @s run tp @e[type=minecraft:armor_stand,sort=nearest,distance=..2,tag=for_molly] @s

execute as @e unless data entity @s {SelectedItem: {id: "minecraft:egg", tag: {display: {Name: '{"text":"Molotov","color":"dark_purple"}'}}}} run tag @s remove holding_molly

scoreboard players set @a[tag=!holding_flash] TH_use_egg 0