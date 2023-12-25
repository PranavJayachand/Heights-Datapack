scoreboard players set TotalLives teamEmpty 100
function heights:cleanup
scoreboard players set @a NetKD 0
scoreboard players set @a KOTHTime 0
scoreboard players set @a InGame 0
gamemode adventure @a
execute if entity @s[team=Red] run title @a title {"text":"Red won the game!","bold":true,"color":"#D43249"}
execute if entity @s[team=Blue] run title @a title {"text":"Blue won the game!","bold":true,"color":"dark_blue"}
execute if entity @s[team=Green] run title @a title {"text":"Green won the game!","bold":true,"color":"green"}
execute if entity @s[team=Yellow] run title @a title {"text":"Yellow won the game!","bold":true,"color":"yellow"}
execute if entity @s[team=] run title @a title {"text":"All y'all lost LLLL","bold":true,"color":"dark_gray"}

execute if entity @s[team=Red] run title @a actionbar {"text":"Red won the game!","bold":true,"color":"#D43249"}
execute if entity @s[team=Blue] run title @a actionbar {"text":"Blue won the game!","bold":true,"color":"dark_blue"}
execute if entity @s[team=Green] run title @a actionbar {"text":"Green won the game!","bold":true,"color":"green"}
execute if entity @s[team=Yellow] run title @a actionbar {"text":"Yellow won the game!","bold":true,"color":"yellow"}
execute if entity @s[team=] run title @a actionbar {"text":"All y'all lost LLLL","bold":true,"color":"dark_gray"}

tp @a 120 68 0

kill @e[type=minecraft:item]
effect clear @a
effect give @a minecraft:regeneration 1 255
function heights:cleanup
kill @e[tag=for_explo]
kill @e[tag=for_molly]
kill @e[tag=for_flash]
kill @e[tag=for_smoke]
kill @e[type=ghast]
