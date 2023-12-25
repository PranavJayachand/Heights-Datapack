#Teleports player to respawn room for duration of hit cooldown
scoreboard players set @s RespawnTime 60

scoreboard players operation @s NetKD -= @s hasDied

scoreboard players operation @s Lives -= @s hasDied
scoreboard players operation @s InGame < @s Lives
execute as @s run function spawn:tp_team_spawn
clear @s minecraft:potion{Potion: "minecraft:water", custom_potion_effects: [{id: haste, Duration: 20}], display: {Name: "\"Reload\""}} 1
execute as @s run function heights:reload
scoreboard players set @s[scores={Lives=1..}] hasDied 0

#Kills all arrows
kill @e[type=arrow]
