# When spawned, the entity will execute the destroy function next time it ticks (killing itself in the process)
# Llama spawn egg for the reversed color but spawns an armor stand
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:trader_llama_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Feather Destroyer","color":"red"}',Lore:['{"text":"Use to destroy the nearest feather in a 3x3x3 area"}']}, EntityTag:{id:"minecraft:armor_stand",NoAI:1b,NoGravity:1b,CanPickUpLoot:0b,Health:1,Silent:1,Invulnerable:1,DeathLootTable:"celeste:entities/none",Tags:["celeste_feather_destroyer"],Facing:0b,Invisible:1b,Marker:1b,Small:1b}}}}

# UX
playsound minecraft:entity.player.levelup neutral @a ~ ~ ~ 1 0.5
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 8
particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.25 0.25 0.25 0.03125 8

# Remove sand, glass, and lapis block
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:7b}},sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sand",Count:1b}},sort=nearest,limit=1]
kill