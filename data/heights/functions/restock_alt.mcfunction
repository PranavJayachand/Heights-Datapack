tellraw @a [{"text":"Drops restocked!"}]

# Offensive Items (High Explosive)
summon item -13 72 0 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"High Explosive","color":"dark_green"}'}}}}
summon item 13 72 0 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"High Explosive","color":"dark_green"}'}}}}
summon item 0 72 -13 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"High Explosive","color":"dark_green"}'}}}}
summon item 0 72 13 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"High Explosive","color":"dark_green"}'}}}}

# Support Items (RPB)
summon item -28 70 0 {Item: {id: "minecraft:firework_rocket", Count: 4, tag: {display: {Name: "\"§r§fRocket-Propelled Bolt [-3§4❤§f]\""}}}}
summon item 28 70 0 {Item: {id: "minecraft:firework_rocket", Count: 4, tag: {display: {Name: "\"§r§fRocket-Propelled Bolt [-3§4❤§f]\""}}}}
summon item 0 70 -28 {Item: {id: "minecraft:firework_rocket", Count: 4, tag: {display: {Name: "\"§r§fRocket-Propelled Bolt [-3§4❤§f]\""}}}}
summon item 0 70 28 {Item: {id: "minecraft:firework_rocket", Count: 4, tag: {display: {Name: "\"§r§fRocket-Propelled Bolt [-3§4❤§f]\""}}}}

# Defensive Items (GhASt)
summon item 0 70 45 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"GhASt","color":"gray"}'}}}}
summon item 45 70 0 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"GhASt","color":"gray"}'}}}}
summon item 0 70 -45 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"GhASt","color":"gray"}'}}}}
summon item -45 70 0 {Item: {id: "minecraft:snowball", Count: 1, tag: {display: {Name: '{"text":"GhASt","color":"gray"}'}}}}

# Site Item (OVERLOADER)
summon item 0 77 0 {Item: {id: "minecraft:honey_bottle", Count: 1, tag: {display:{Name:'[{"text":"OVERLOADER","italic":false,"color":"aqua","bold":true}]',Lore:['[{"text":"Become ","italic":false,"color":"white"},{"text":"invulnerable","color":"green"},{"text":" for 8 seconds. While invulnerable, "},{"text":"you can be seen through walls","color":"red"},{"text":"."},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"You are still suspect to knockback.","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"\\"I AM BULLETPROOF!\\"","italic":false,"color":"dark_blue"}]']}}}}