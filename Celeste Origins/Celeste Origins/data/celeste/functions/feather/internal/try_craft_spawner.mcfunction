execute if score $on clst_ft_crafting matches 1.. if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:7b}},distance=..1] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:feather",Count:1b}},distance=..1] run function celeste:feather/internal/craft_spawner