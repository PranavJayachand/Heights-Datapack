effect clear @s minecraft:haste
msg @s reloaded
clear @s minecraft:firework_star
give @s minecraft:firework_star 32
clear @s minecraft:glass_bottle
give @s minecraft:potion{Potion: "minecraft:water", custom_potion_effects: [{id: haste, Duration: 20}], display: {Name: "\"Reload\""}}
tag @a[nbt=!{active_effects: [{id: "minecraft:haste"}]}] remove Hasty
