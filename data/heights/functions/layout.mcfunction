#Spawnpoint potion 
clear @s
give @s iron_sword{Unbreakable:1, display: {Name: '[{"text":"Polished Knife","italic":false}]'}, Enchantments: [{id: sharpness, lvl: 7}], HideFlags: 7} 1
give @s crossbow{Unbreakable:1, ChargedProjectiles: [{id: "minecraft:arrow", Count: 1b}], Charged: 1b, display: {Name: '[{"text":"SBG","italic":true}]'}, Enchantments: [{id: quick_charge, lvl: 5}, {id: piercing, lvl: 1}]} 1
item replace entity @s armor.head with iron_helmet{Unbreakable: 1, display: {Name: '[{"text":"Combat Headgear","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: blast_protection, lvl: 2}, {id: projectile_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}], HideFlags: 7} 1
item replace entity @s armor.feet with iron_boots{Unbreakable: 1, display: {Name: '[{"text":"Sneakers","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: feather_falling, lvl: 4}, {id: projectile_protection, lvl: 2}, {id: blast_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}, {id: soul_speed, lvl: 80}], HideFlags: 7} 1
item replace entity @s armor.legs with leather_leggings{Unbreakable: 1, display: {color: 3487029, Name: '[{"text":"War Trousers","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: projectile_protection, lvl: 2}, {id: blast_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}], HideFlags: 7} 1
item replace entity @s[team=Green] armor.chest with leather_chestplate{Unbreakable: 1, display: {color: 6192150, Name: '[{"text":"Kevlar Vest","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: blast_protection, lvl: 2}, {id: projectile_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}], HideFlags: 7} 1
item replace entity @s[team=Blue] armor.chest with leather_chestplate{Unbreakable: 1, display: {color: 3949738, Name: '[{"text":"Kevlar Vest","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: projectile_protection, lvl: 2}, {id: blast_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}], HideFlags: 7} 1
item replace entity @s[team=Yellow] armor.chest with leather_chestplate{Unbreakable: 1, display: {color: 16701501, Name: '[{"text":"Kevlar Vest","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: projectile_protection, lvl: 2}, {id: blast_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}], HideFlags: 7} 1
item replace entity @s[team=Red] armor.chest with leather_chestplate{Unbreakable: 1, display: {color: 11546150, Name: '[{"text":"Kevlar Vest","italic":false}]'}, Enchantments: [{id: binding_curse, lvl: 1}, {id: projectile_protection, lvl: 2}, {id: blast_protection, lvl: 2}, {id: quick_charge, lvl: 5}, {id: sharpness, lvl: 7}], HideFlags: 7} 1
give @s minecraft:potion{Potion: "minecraft:water", custom_potion_effects: [{id: haste, Duration: 20}], display: {Name: "\"Reload\""}}

#give @s snowball{display:{Name:'{"text":"High Explosive","color":"dark_green"}'}} 1
#give @s firework_rocket{display: {Name: "\"§r§fRocket-Propelled Bolt [-3§4❤§f]\""}} 6

give @s firework_star 32

# Prevents hunger drop
effect give @s saturation infinite 1 true
