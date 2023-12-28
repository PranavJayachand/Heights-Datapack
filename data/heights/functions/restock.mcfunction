tellraw @a [{"text":"Drops restocked!"}]

# Offensive Items (Molotov)
summon item -13 72 0 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Molotov","color":"dark_purple"}'}}}}
summon item 13 72 0 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Molotov","color":"dark_purple"}'}}}}
summon item 0 72 -13 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Molotov","color":"dark_purple"}'}}}}
summon item 0 72 13 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Molotov","color":"dark_purple"}'}}}}

# Support Items (Painkiller)
summon item -28 70 0 {Item: {id: "minecraft:potion", Count: 1, tag: {custom_potion_effects: [{id: "minecraft:absorption", duration: 12000, show_particles: 0b}], CustomPotionColor: 10855845, display: {Name: "\"§r§fPainkiller [2§6❤§f]\""}}}}
summon item 28 70 0 {Item: {id: "minecraft:potion", Count: 1, tag: {custom_potion_effects: [{id: "minecraft:absorption", duration: 12000, show_particles: 0b}], CustomPotionColor: 10855845, display: {Name: "\"§r§fPainkiller [2§6❤§f]\""}}}}
summon item 0 70 -28 {Item: {id: "minecraft:potion", Count: 1, tag: {custom_potion_effects: [{id: "minecraft:absorption", duration: 12000, show_particles: 0b}], CustomPotionColor: 10855845, display: {Name: "\"§r§fPainkiller [2§6❤§f]\""}}}}
summon item 0 70 28 {Item: {id: "minecraft:potion", Count: 1, tag: {custom_potion_effects: [{id: "minecraft:absorption", duration: 12000, show_particles: 0b}], CustomPotionColor: 10855845, display: {Name: "\"§r§fPainkiller [2§6❤§f]\""}}}}

# Defensive Items (Flashbang)
summon item 0 70 45 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Flashbat","color":"#996600"}'}}}}
summon item 45 70 0 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Flashbat","color":"#996600"}'}}}}
summon item 0 70 -45 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Flashbat","color":"#996600"}'}}}}
summon item -45 70 0 {Item: {id: "minecraft:egg", Count: 1, tag: {display: {Name: '{"text":"Flashbat","color":"#996600"}'}}}}

# Site Item (Medical Kit)
summon item 0 77 0 {Item: {id: "minecraft:potion", Count: 1, tag: {CustomPotionColor:16723494,custom_potion_effects:[{id:instant_health,duration:1,show_particles:0b},{id:regeneration,duration:400,show_particles:0b}],display: {Name: "\"§r§fMedical Kit [6§c❤§f]\""}}}}