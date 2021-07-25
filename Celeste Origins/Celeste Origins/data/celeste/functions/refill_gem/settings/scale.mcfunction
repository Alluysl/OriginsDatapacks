# Just makes the refill gems visually bigger (also increases the size of the hitbox of the item frame, but not of the gem)
# The target size is close to the size of the hitbox (although if you go too fast the collision won't even be registered so don't expect that going through the very corner of it will always refill your dash)
# If you want a different scale just change these numbers
# Requires Pehkui, of course
scale set pehkui:width 2 @e[tag=celeste_refill_gem]
scale set pehkui:height 2 @e[tag=celeste_refill_gem]