# Initialize score if not done already
execute as @a unless score @s clst_spring_hztl = @s clst_spring_hztl run scoreboard players operation @s clst_spring_hztl = $default clst_spring_hztl

execute as @e[type=minecraft:bee,tag=celeste_spring_pusher] run function celeste:spring/internal/tick_pusher
execute as @a[tag=celeste_spring_pushed] run function celeste:spring/internal/tick_pushed
# Replace the above with @e[tag=celeste_spring_pushed] for pushing non-player entities (only meaningful - still fairly marginally - in 1.17)