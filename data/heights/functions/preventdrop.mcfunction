execute as @e[type=item,tag=!processed] run data modify entity @s[gamemode=adventure] Owner set from entity @s[gamemode=adventure] Thrower
execute as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add processed