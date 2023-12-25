#heights timers
scoreboard objectives add InGame dummy
team add Green
team add Red
team add Yellow
team add Blue
team add Spectator
team add NoCollisions

team modify Spectator color gray
team modify Green color green
team modify Red color red
team modify Yellow color yellow
team modify Blue color blue

team modify Blue nametagVisibility hideForOtherTeams
team modify Green nametagVisibility hideForOtherTeams
team modify Yellow nametagVisibility hideForOtherTeams
team modify Red nametagVisibility hideForOtherTeams
team modify Spectator nametagVisibility hideForOtherTeams

team modify Red prefix {"text":"R ","color":"red","bold":true}
team modify Blue prefix {"text":"B ","color":"blue","bold":true}
team modify Green prefix {"text":"G ","color":"green","bold":true}
team modify Yellow prefix {"text":"Y ","color":"yellow","bold":true}
team modify Spectator prefix {"text":"S ","color":"gray","bold":true}
#throwables objectives
