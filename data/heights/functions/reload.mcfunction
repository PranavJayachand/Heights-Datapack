effect clear @s minecraft:haste
tag @a[nbt=!{active_effects: [{id: "minecraft:haste"}]}] remove Hasty

clear @s minecraft:firework_star
give @s minecraft:firework_star 32

# Returns reload potion
give @s minecraft:potion{Potion: "minecraft:water", custom_potion_effects: [{id: haste, Duration: 20}], display: {Name: "\"Reload\""}}

# Sound cues
execute at @s run playsound item.crossbow.loading_end player @s ~ ~ ~ 1 0.5

# Visual cues
title @s times 0 20 20
title @s subtitle ["- Reloaded -"]
title @s title [""]

