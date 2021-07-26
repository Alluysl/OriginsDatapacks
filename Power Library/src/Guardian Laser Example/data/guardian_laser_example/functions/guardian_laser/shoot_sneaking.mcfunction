# Set iteration counter (of raycasting steps)
scoreboard players set @s grdnlazr_raycast 0

# Start raycasting
execute positioned ~ ~1.25 ~ run function guardian_laser_example:guardian_laser/raycast_shoot