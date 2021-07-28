# Set iteration counter (of raycasting steps)
scoreboard players set @s grdnlazr_raycast 0

# Prevent hitting self
tag @s add guardian_laser_immune

# Start raycasting
execute positioned ~ ~1.5 ~ run function guardian_laser_example:guardian_laser/raycast_shoot

tag @s remove guardian_laser_immune