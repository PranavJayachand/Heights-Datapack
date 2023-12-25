#function heights:cleanup
function heights:setup
execute as @a[scores={InGame=1}] run function heights:layout
gamemode adventure @a[team=!Spectator]
gamemode spectator @a[team=Spectator]
tp @a[team=Spectator] 0 83 0
effect give @a regeneration 1 250 true

tellraw @a {"text":"Welcome to the Heights! This map is an arena-style crossbow minigame.","color":"green"}
tellraw @a {"text":"Win Conditions: Be the last man standing, OR capture middle by standing on it for a minute straight.","color":"red"}
tellraw @a {"text":"Also! Offensive and defensive items spawn in the colorless buildings between the different regions! Make sure to check them for useful items.","color":"green"}
