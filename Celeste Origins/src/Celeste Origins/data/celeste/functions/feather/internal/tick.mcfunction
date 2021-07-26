execute as @e[type=minecraft:item_frame,tag=celeste_feather] run function celeste:feather/internal/tick_feather
execute as @e[type=minecraft:armor_stand,tag=celeste_feather_destroyer] at @s run function celeste:feather/destroy
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] at @s run function celeste:feather/internal/try_craft_spawner
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] at @s run function celeste:feather/internal/try_craft_destroyer