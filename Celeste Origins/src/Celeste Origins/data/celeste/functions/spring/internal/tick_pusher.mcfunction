# If no score yet, add
execute unless score @s clst_spring_time = @s clst_spring_time run scoreboard players operation @s clst_spring_time = $ticks clst_spring_time
# Count down
scoreboard players remove @s clst_spring_time 1

# Kill when timer reaches 0
execute as @s if score @s clst_spring_time matches ..0 run tp ~ -128 ~

# Else teleport to closest pushed entity to, well, push them
execute as @s unless score @s clst_spring_time matches ..0 run tp @e[tag=celeste_spring_pushed,sort=nearest,limit=1]