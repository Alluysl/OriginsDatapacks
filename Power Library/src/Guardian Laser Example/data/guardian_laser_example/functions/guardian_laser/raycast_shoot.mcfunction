# Increase recursion step counter
scoreboard players add @s grdnlazr_raycast 1

# If no entity in block or self in block, unless inside solid block or counter reached max, iterate recursively
execute positioned ~-1 ~-1 ~-1 unless entity @e[dx=1,tag=!guardian_laser_immune] positioned ~1 ~1 ~1 unless score @s grdnlazr_raycast >= $maxIterations grdnlazr_raycast unless block ~ ~ ~ #community:solid positioned ^ ^ ^0.125 run function guardian_laser_example:guardian_laser/raycast_shoot

# If entity in block (2x2x2 hitbox centered on the point) and not self in there, apply instant damage to the closest entity
execute positioned ~-1 ~-1 ~-1 if entity @e[tag=!guardian_laser_immune,dx=1] positioned ~1 ~1 ~1 as @e[tag=!guardian_laser_immune,sort=nearest,limit=1] run function guardian_laser_example:guardian_laser/get_damaged