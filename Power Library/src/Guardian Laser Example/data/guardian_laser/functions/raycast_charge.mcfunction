# Spawn particles if iteration step is modulo particle steps (every particleSteps steps, essentially)
scoreboard players operation #temp grdnlazr_raycast = @s grdnlazr_raycast
scoreboard players operation #temp grdnlazr_raycast %= $particleSteps grdnlazr_raycast
execute if score #temp grdnlazr_raycast matches 0 run particle minecraft:bubble ~ ~ ~ 0.125 0.125 0.125 0 1

# Increase recursion step counter
scoreboard players add @s grdnlazr_raycast 1

# Unless inside solid block or counter reached max, iterate recursively
execute unless score @s grdnlazr_raycast >= $maxIterations grdnlazr_raycast unless block ~ ~ ~ #community:solid positioned ^ ^ ^0.125 run function guardian_laser:raycast_charge