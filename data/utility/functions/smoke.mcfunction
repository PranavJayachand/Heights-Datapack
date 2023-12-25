# Ages armor stand
execute as @e[type=armor_stand,tag=for_smoke] at @s run scoreboard players add @s TH_p_life 1

# Deletes armor stands that have existed for 60s (if stalled in air)
execute as @e[tag=for_smoke,type=minecraft:armor_stand,scores={TH_p_life=1200..}] at @s run kill @s

execute as @e[nbt={SelectedItem: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"GhASt","color":"gray"}'}}}}] run tag @s add holding_smoke
execute as @e[tag=holding_smoke,scores={TH_use_snowball=1}] run tag @s add thrown_smoke
execute as @e[tag=thrown_smoke] at @s positioned as @s run tag @e[type=snowball,sort=nearest,limit=1] add is_smoke
tag @e remove thrown_smoke

execute as @e[type=snowball,tag=is_smoke] at @s unless score @s ArmorStand matches 1 store success score @s ArmorStand run summon armor_stand ~ ~ ~ {Marker: 1, Invisible: 1b, Tags: [for_smoke]}

# Move armor stand to current snowball location
execute as @e[type=snowball,tag=is_smoke] at @s run tp @e[type=minecraft:armor_stand,tag=for_smoke,sort=nearest,distance=..2] @s

# Activates utility effect
# Execute condition should only apply for armor stands which lack respective utility, meaning that the projectile has landed
execute as @e[type=armor_stand,tag=for_smoke] at @s unless entity @e[type=snowball,tag=is_smoke,distance=..1] run scoreboard players set @s TH_p_life 1200

## Smoke Effect

execute as @e[type=minecraft:armor_stand,tag=for_smoke,scores={TH_p_life=1200..}] at @s run summon minecraft:ghast ~ ~ ~ {NoAI:1,Silent:1,Attributes:[{Name:"generic.knockback_resistance", Base:1.0}]}

## GhASt Handling
# Disables collisions for GhASts
team join NoCollisions @e[type=minecraft:ghast]

# Makes GhASts immune
effect give @e[type=minecraft:ghast] minecraft:resistance 20 5 true

scoreboard players operation @e[type=minecraft:ghast] GhASt_Age < @p GA_Ceiling

# Ages bloomed GhASts
scoreboard players add @e[type=minecraft:ghast,tag=!Expired] GhASt_Age 1

# Ghast removal
tag @e[scores={GhASt_Age=400}] add Expired
kill @e[type=minecraft:ghast,tag=Expired]
scoreboard players reset @e[tag=Expired]
execute as @e[type=minecraft:ghast,tag=Expired] run tag @s remove Expired

## CLEAN UP

# Clears tags once flashbang is not held
execute as @e unless data entity @s {SelectedItem: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"GhASt","color":"gray"}'}}}} run tag @s remove holding_smoke

# Clears respective scoreboard param
scoreboard players set @a[tag=!holding_explo] TH_use_snowball 0