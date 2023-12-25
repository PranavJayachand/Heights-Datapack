# Ages armor stand
execute as @e[type=armor_stand,tag=for_flash] at @s run scoreboard players add @s TH_p_life 1

# Deletes armor stands that have existed for 60s (if stalled in air)
execute as @e[tag=for_flash,type=minecraft:armor_stand,scores={TH_p_life=1200..}] at @s run kill @s

execute as @e[nbt={SelectedItem: {id: "minecraft:egg", tag: {display: {Name: '{"text":"Flashbat","color":"#996600"}'}}}}] run tag @s add holding_flash
execute as @e[tag=holding_flash,scores={TH_use_egg=1}] run tag @s add thrown_flash
execute as @e[tag=thrown_flash] at @s positioned as @s run tag @e[type=egg,sort=nearest,limit=1] add is_flash
tag @e remove thrown_flash

execute as @e[type=egg,tag=is_flash] at @s unless score @s ArmorStand matches 1 store success score @s ArmorStand run summon armor_stand ~ ~ ~ {Marker: 1, Invisible: 1b, Tags: [for_flash]}

# Move armor stand to current egg location
execute as @e[type=egg,tag=is_flash] at @s run tp @e[type=minecraft:armor_stand,tag=for_flash,sort=nearest,distance=..2] @s

# Activates utility effect
# Execute condition should only apply for armor stands which lack respective utility, meaning that the projectile has landed
execute as @e[type=armor_stand,tag=for_flash] at @s unless entity @e[type=egg,tag=is_flash,distance=..1] run scoreboard players set @s TH_p_life 1200

## Flashbang Effect

execute as @e[type=minecraft:armor_stand,tag=for_flash,scores={TH_p_life=1200..}] at @s run effect give @e[distance=..7] blindness 5 1 false
execute as @e[type=minecraft:armor_stand,tag=for_flash,scores={TH_p_life=1200..}] at @s run effect give @e[distance=..7] nausea 5 1 false

## CLEAN UP

# Clears tags once flashbang is not held
execute as @e unless data entity @s {SelectedItem: {id: "minecraft:egg", tag: {display: {Name: '{"text":"Flashbat","color":"#996600"}'}}}} run tag @s remove holding_flash

# Clears respective scoreboard param
scoreboard players set @a[tag=!holding_molly] TH_use_egg 0