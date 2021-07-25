# Remove closest feather in 3x3x3 area
execute as @e[tag=celeste_feather,distance=..2,sort=nearest,limit=1] at @s run function celeste:feather/internal/get_destroyed
# Kill self if temporary feather-removing entity (if you gave yourself that tag as a player... why)
execute if entity @s[tag=celeste_feather_destroyer] run kill