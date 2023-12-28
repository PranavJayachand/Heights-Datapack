#Runs res function when game not happening
effect give @a[scores={InGame=0}] resistance infinite 5 true
effect give @a[scores={InGame=0}] saturation infinite 0 true

#tp groxen_nin 100 100 100

#Removes effects
execute as @a[nbt=!{Inventory: [{Slot: -106b, id: "minecraft:crossbow"}]}] run effect clear @s minecraft:slowness
execute as @a[nbt=!{SelectedItem: {id: "minecraft:crossbow"}}] run effect clear @s minecraft:slowness

#tallies up scores and deaths
scoreboard players set Red teamKills 0
scoreboard players set Blue teamKills 0
scoreboard players set Green teamKills 0
scoreboard players set Yellow teamKills 0
execute as @a[team=Red] run scoreboard players operation Red teamKills += @s NetKD
execute as @a[team=Blue] run scoreboard players operation Blue teamKills += @s NetKD
execute as @a[team=Green] run scoreboard players operation Green teamKills += @s NetKD
execute as @a[team=Yellow] run scoreboard players operation Yellow teamKills += @s NetKD

scoreboard players set TotalLives teamEmpty 0

scoreboard players set Red teamEmpty 0
scoreboard players set Blue teamEmpty 0
scoreboard players set Green teamEmpty 0
scoreboard players set Yellow teamEmpty 0

#scoreboard players set Red teamEmptyBool 1
#scoreboard players set Blue teamEmptyBool 1
#scoreboard players set Green teamEmptyBool 1
#scoreboard players set Yellow teamEmptyBool 1

execute as @a[team=Red] run scoreboard players operation Red teamEmpty += @s Lives
execute as @a[team=Blue] run scoreboard players operation Blue teamEmpty += @s Lives
execute as @a[team=Green] run scoreboard players operation Green teamEmpty += @s Lives
execute as @a[team=Yellow] run scoreboard players operation Yellow teamEmpty += @s Lives

scoreboard players operation Red teamEmptyBool < Red teamEmpty
scoreboard players operation Blue teamEmptyBool < Blue teamEmpty
scoreboard players operation Green teamEmptyBool < Green teamEmpty
scoreboard players operation Yellow teamEmptyBool < Yellow teamEmpty

execute if entity @a[scores={InGame=1}] run scoreboard players operation TotalLives teamEmpty += Red teamEmptyBool
execute if entity @a[scores={InGame=1}] run scoreboard players operation TotalLives teamEmpty += Blue teamEmptyBool
execute if entity @a[scores={InGame=1}] run scoreboard players operation TotalLives teamEmpty += Green teamEmptyBool
execute if entity @a[scores={InGame=1}] run scoreboard players operation TotalLives teamEmpty += Yellow teamEmptyBool

## COMMENT OUT LINE BELOW TO ENTER SINGLEPLAYER DEBUG MODE
# execute if score TotalLives teamEmpty matches 1 as @a[limit=1,scores={Lives=1..}] at @s run function heights:gameend

# Sets players without lives to spectators
gamemode spectator @a[scores={InGame=0,hasDied=1}]
scoreboard players set @a[scores={InGame=0,hasDied=1}] hasDied 0

# Slowness upon holding crossbow
execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow"}]}] run effect give @s minecraft:slowness 1 3 true
execute as @a[nbt={SelectedItem: {id: "minecraft:crossbow"}}] run effect give @s minecraft:slowness 1 3 true

## Misc. Proc Checks

# Reloads
tag @a[nbt={active_effects: [{id: "minecraft:haste"}]}] add Hasty
execute as @a[tag=Hasty] at @s run function heights:reload

# Overloads
execute as @a[scores={drank_honey=1..}] run function utility:overload

#Runs tp_after_setspawn Function
#tag @a[nbt={ActiveEffects:[{Id:26b}]}] add TPAfterSpawn
#execute as @a[tag=TPAfterSpawn] at @s run function spawn:tp_after_setspawn

#Runs kill effect function
execute as @a[scores={KillEffect=1}] at @s run function heights:killeffect

#Death and spawnpoint check
execute as @a[scores={InGame=1}] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run function spawn:death
execute as @a[scores={InGame=1}] at @s if block ~ ~-1 ~ minecraft:white_stained_glass run function spawn:death

#Spawnpoint timer check
execute as @a[scores={SpawnpointSet=0,InGame=1}] at @s run function spawn:tp_spawn

#Auto-reloads crossbow
execute as @a[nbt={SelectedItem: {id: "minecraft:crossbow", tag: {Charged: 0b}}}] at @s run function heights:autoload

# Clears glass bottles from inventories
clear @a glass_bottle

# Removes chickens accidentally spawned from eggs
kill @e[type=chicken]

## Inventory Limit Management
# Current Values: 1 of each grenade, 10 RPBs, 2 Painkillers, 1 Medkit, 1 Overloader

execute as @a at @s store result score @s num_explo run clear @s snowball{display: {Name: '{"text":"High Explosive","color":"dark_green"}'}} 0
execute as @a at @s store result score @s num_molly run clear @s egg{display: {Name: '{"text":"Molotov","color":"dark_purple"}'}} 0
execute as @a at @s store result score @s num_flash run clear @s egg{display: {Name: '{"text":"Flashbat","color":"#996600"}'}} 0
execute as @a at @s store result score @s num_smoke run clear @s snowball{display: {Name: '{"text":"GhASt","color":"gray"}'}} 0
execute as @a at @s store result score @s num_rocket run clear @s firework_rocket 0
execute as @a at @s store result score @s num_abspot run clear @s potion{display: {Name: "\"§r§fPainkiller [2§6❤§f]\""}} 0
execute as @a at @s store result score @s num_medkit run clear @s potion{display: {Name: "\"§r§fMedical Kit [6§c❤§f]\""}} 0
execute as @a at @s store result score @s num_uber run clear @s honey_bottle 0

# The previous syntax of "as @a[score=...] at @s run" seems redundant, as the "at @s" shouldn't do anything more
# If there are issues with capacity handling, maybe that fix will do things
execute as @a[scores={num_explo=2..}] run clear @s snowball{display: {Name: '{"text":"High Explosive","color":"dark_green"}'}} 1
execute as @a[scores={num_molly=2..}] run clear @s egg{display: {Name: '{"text":"Molotov","color":"dark_purple"}'}} 1
execute as @a[scores={num_flash=2..}] run clear @s egg{display: {Name: '{"text":"Flashbat","color":"#996600"}'}} 1
execute as @a[scores={num_smoke=2..}] run clear @s snowball{display: {Name: '{"text":"GhASt","color":"gray"}'}} 1
execute as @a[scores={num_rocket=11..}] run clear @s firework_rocket 1
execute as @a[scores={num_abspot=3..}] run clear @s potion{display: {Name: "\"§r§fPainkiller [2§6❤§f]\""}} 1
execute as @a[scores={num_medkit=2..}] run clear @s potion{display: {Name: "\"§r§fMedical Kit [6§c❤§f]\""}} 1
execute as @a[scores={num_uber=2..}] run clear @s honey_bottle 1

## Utility Drops

# Tick down 1200 tick (60s) timer
execute as @e[name="Site Drop", limit=1] at @s unless entity @s[scores={Timing=0}] run scoreboard players remove @s Timing 1

# Drop items at respective spots
execute as @e[name="Site Drop", limit=1] at @s if entity @s[scores={Timing=1}] run function heights:restock_alt
execute as @e[name="Site Drop", limit=1] at @s if entity @s[scores={Timing=600}] run function heights:restock

# Reset timer once exhausted
execute as @e[name="Site Drop", limit=1] at @s if entity @s[scores={Timing=0}] as @s run scoreboard players set @s Timing 1200

#Prevents dropping items
function heights:preventdrop

# Lobby Team Indicator
execute as @a[scores={InGame=0},team=Red] at @s run title @s actionbar {"text":"You are on the Red Team!","bold":true,"color":"red"}
execute as @a[scores={InGame=0},team=Blue] at @s run title @s actionbar {"text":"You are on the Blue Team!","bold":true,"color":"blue"}
execute as @a[scores={InGame=0},team=Green] at @s run title @s actionbar {"text":"You are on the Green Team!","bold":true,"color":"green"}
execute as @a[scores={InGame=0},team=Yellow] at @s run title @s actionbar {"text":"You are on the Yellow Team!","bold":true,"color":"yellow"}
execute as @a[scores={InGame=0},team=Spectator] at @s run title @s actionbar {"text":"You are Spectating!","bold":true,"color":"gray"}


# Removes grounded arrows
kill @e[type=arrow,nbt={inGround: 1b}]

#scoreboard players remove @a BowDelay 1