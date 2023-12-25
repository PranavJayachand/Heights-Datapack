gamerule doDaylightCycle false
gamerule mobGriefing false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule naturalRegeneration false
gamerule doMobLoot false

scoreboard objectives add HasArrows dummy
scoreboard objectives add HasMissiles dummy
scoreboard objectives add Kills playerKillCount
scoreboard objectives add hasDied deathCount
scoreboard objectives add Deaths deathCount
scoreboard objectives add RespawnTime dummy
scoreboard objectives add NetKD playerKillCount "Score"
scoreboard objectives add Spawn dummy
scoreboard objectives add BowDelay dummy
scoreboard objectives add BowReloaded dummy
scoreboard objectives add SpawnpointSet dummy
scoreboard objectives add KillEffect playerKillCount
scoreboard objectives add Timing dummy
scoreboard objectives add KOTHTime dummy
scoreboard objectives add InGame dummy
scoreboard objectives add contested dummy
scoreboard objectives add yellowKills teamkill.yellow
scoreboard objectives add greenKills teamkill.green
scoreboard objectives add redKills teamkill.red
scoreboard objectives add blueKills teamkill.blue
scoreboard objectives add teamKills dummy
scoreboard objectives add Lives dummy
scoreboard objectives add teamEmpty dummy
scoreboard objectives add teamEmptyBool dummy
scoreboard objectives add TH_p_life dummy
scoreboard objectives add Flash dummy
scoreboard objectives add Twelve dummy
scoreboard objectives add xpStore dummy
scoreboard objectives add Uuid0 dummy
scoreboard objectives add Uuid1 dummy
scoreboard objectives add Uuid2 dummy
scoreboard objectives add Uuid3 dummy

scoreboard objectives add Motion0 dummy
scoreboard objectives add Motion1 dummy
scoreboard objectives add Motion2 dummy

scoreboard objectives add KOTHTimeO100 dummy
scoreboard objectives add ArmorStand dummy

#Count variables for each utility

scoreboard objectives add FireworkCT dummy
scoreboard objectives add SnowballCT dummy
scoreboard objectives add EggCT dummy
scoreboard objectives add RegenCT dummy


scoreboard players set @a InGame 1
scoreboard players set @a[team=] InGame 0


scoreboard players set Twelve Twelve 12
scoreboard players set @a[scores={InGame=1},team=!Spectator] Lives 3
scoreboard players reset @a[team=Spectator] Lives
scoreboard objectives setdisplay list Lives
scoreboard players set Blue teamKills 0
scoreboard players set Green teamKills 0
scoreboard players set Yellow teamKills 0
scoreboard players set Red teamKills 0



scoreboard players set @a KOTHTime 0
scoreboard players set @a KOTHTimeO100 0
scoreboard players set @a Flash 0
scoreboard players set @a xpStore 0
scoreboard players set @e Timing 0
scoreboard players set @a[scores={InGame=1}] SpawnpointSet 0
scoreboard players set @a[scores={InGame=1}] BowDelay 5
scoreboard players set @a[scores={InGame=1}] BowReloaded 0
scoreboard players set @a[scores={InGame=1}] HasArrows 0
scoreboard players set @a[scores={InGame=1}] HasMissiles 0
scoreboard players set @a[scores={InGame=1}] hasDied 0
scoreboard players set @a[scores={InGame=1}] Spawn 5
scoreboard players set Red teamEmptyBool 1
scoreboard players set Blue teamEmptyBool 1
scoreboard players set Green teamEmptyBool 1
scoreboard players set Yellow teamEmptyBool 1

# UTILITY CLOCK VARIABLES $$$

scoreboard objectives add TH_p_life dummy
scoreboard objectives add TH_use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add TH_use_egg minecraft.used:minecraft.egg

scoreboard objectives add GhASt_Age dummy
team add NoCollisions
team modify NoCollisions collisionRule never

# UTILITY CLOCK VARIABLES $$$

# Fixes difficulty
difficulty easy

# Clears effects of in-game players
effect clear @a[scores={InGame=1}]

# Prevents hunger drop
effect give @a saturation infinite 1 true

scoreboard objectives setdisplay sidebar Lives


kill @e[type=item]
spawnpoint @a 0 251 0
