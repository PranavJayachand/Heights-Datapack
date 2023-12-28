scoreboard players set @s drank_honey 0

# Effects
effect give @s resistance 8 4 true
effect give @s glowing 8 0 true

# Sound cues
execute at @s run playsound minecraft:entity.lightning_bolt.thunder player @p ~ ~ ~ 1
execute at @s run playsound minecraft:block.bell.resonate player @a[distance=1..] ~ ~ ~ 10

# Visual indicator
title @s times 0 150 10
title @s subtitle ["",{"text":"pog","obfuscated":true,"color":"aqua"},{"text":" OVERLOADED","bold":true,"color":"aqua"},{"text":" pog","obfuscated":true,"color":"aqua"}] 
title @s title [""]
teammsg is OVERLOADED!