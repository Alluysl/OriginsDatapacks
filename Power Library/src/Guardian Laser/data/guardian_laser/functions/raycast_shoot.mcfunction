# Increase recursion step counter
scoreboard players add @s grdnlazr_raycast 1

# If no entity in block or self in block, unless inside solid block or counter reached max, iterate recursively
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0,tag=!guardian_laser_immune] positioned ~0.5 ~0.5 ~0.5 unless score @s grdnlazr_raycast >= $maxIterations grdnlazr_raycast unless block ~ ~ ~ #community:solid positioned ^ ^ ^0.125 run function guardian_laser:raycast_shoot

# If entity in block (1x1x1 hitbox centered on the point) and not self in there, apply instant damage to the closest entity
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!guardian_laser_immune,dx=0] positioned ~0.5 ~0.5 ~0.5 as @e[tag=!guardian_laser_immune,sort=nearest,limit=1] run function guardian_laser:get_damaged