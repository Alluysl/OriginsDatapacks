# Initialize score if not done already
execute as @a unless score @s clst_spring_hztl = @s clst_spring_hztl run scoreboard players operation @s clst_spring_hztl = $default clst_spring_hztl

execute as @e[tag=celeste_spring_pusher] run function celeste:spring/internal/tick_pusher
execute as @e[tag=celeste_spring_pushed] run function celeste:spring/internal/tick_pushed