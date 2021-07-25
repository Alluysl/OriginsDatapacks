# Remove closest gem in 3x3x3 area
execute as @e[tag=celeste_refill_gem,distance=..2,sort=nearest,limit=1] at @s run function celeste:refill_gem/internal/get_destroyed
# Kill self if temporary gem-removing entity (if you gave yourself that tag as a player... why)
execute if entity @s[tag=celeste_refill_gem_destroyer] run kill