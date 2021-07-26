# Count down
scoreboard players remove @s clst_spring_time 1

# Remove tag and timer when timer reaches 0
execute as @s run execute if score @s clst_spring_time matches ..0 run tag @s remove celeste_spring_pushed
execute as @s run execute if score @s clst_spring_time matches ..0 run scoreboard players reset @s clst_spring_time