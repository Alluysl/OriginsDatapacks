execute as @e[type=minecraft:item_frame,tag=celeste_refill_gem] run function celeste:refill_gem/internal/tick_gem
execute as @e[type=minecraft:armor_stand,tag=celeste_refill_gem_destroyer] at @s run function celeste:refill_gem/destroy
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] at @s run function celeste:refill_gem/internal/try_craft_spawner
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] at @s run function celeste:refill_gem/internal/try_craft_destroyer