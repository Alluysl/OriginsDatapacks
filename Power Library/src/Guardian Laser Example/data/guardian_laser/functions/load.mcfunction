scoreboard objectives add grdnlazr_raycast dummy

# Maximum amount of raycasting iteration (multiplied by the step size, gives the range of the attack). Can't be more than the maxCommandChainLength gamerule amount.
scoreboard players set $maxIterations grdnlazr_raycast 120

# The steps in-between two particles firing
scoreboard players set $particleSteps grdnlazr_raycast 8