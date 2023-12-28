#Removes all variables but InGame, a tracker that controls whether or not the game is running.

scoreboard objectives remove HasArrows
scoreboard objectives remove Kills
scoreboard objectives remove hasDied
scoreboard objectives remove Deaths
scoreboard objectives remove RespawnTime
scoreboard objectives remove NetKD
scoreboard objectives remove Spawn
scoreboard objectives remove BowDelay
scoreboard objectives remove BowReloaded
scoreboard objectives remove HasMissiles
scoreboard objectives remove KillEffect
scoreboard objectives remove SpawnpointSet
scoreboard objectives remove Timing
scoreboard objectives remove KOTHTime
scoreboard objectives remove contested
scoreboard objectives remove blueKills
scoreboard objectives remove yellowKills
scoreboard objectives remove redKills
scoreboard objectives remove greenKills
scoreboard objectives remove teamKills
scoreboard objectives remove Lives
scoreboard objectives remove teamEmpty
scoreboard objectives remove teamEmptyBool
scoreboard objectives remove xpStore
scoreboard objectives remove Flash
scoreboard objectives remove Twelve
scoreboard objectives remove Motion0
scoreboard objectives remove Motion1
scoreboard objectives remove Motion2
scoreboard objectives remove KOTHTimeO100
scoreboard objectives remove ArmorStand
scoreboard objectives remove GhASt_Age

scoreboard objectives remove drank_honey

# UTILITY

scoreboard objectives remove TH_p_life
scoreboard objectives remove TH_use_snowball
scoreboard objectives remove TH_use_egg

scoreboard objectives remove num_rocket
scoreboard objectives remove SnowballCT
scoreboard objectives remove EggCT
scoreboard objectives remove num_explo
scoreboard objectives remove num_molly
scoreboard objectives remove num_flash
scoreboard objectives remove num_smoke
scoreboard objectives remove num_abspot
scoreboard objectives remove num_medkit
scoreboard objectives remove num_uber
# UTILITY

kill @e[type=area_effect_cloud]
kill @e[type=item]

#team remove Blue
#team remove Yellow
#team remove Green
#team remove Red
#team remove NoCollisions

xp set @a 0 levels
xp set @a 0 points

#scoreboard objectives remove InGame
clear @a
