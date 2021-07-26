# When spawned, the entity will execute the destroy function next time it ticks (killing itself in the process)
# Parrot spawn egg for the red color but spawns an armor stand
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:parrot_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Refill Gem Destroyer","color":"red"}',Lore:['{"text":"Use to destroy the nearest refill gem in a 3x3x3 area"}']}, EntityTag:{id:"minecraft:armor_stand",NoAI:1b,NoGravity:1b,CanPickUpLoot:0b,Health:1,Silent:1,Invulnerable:1,DeathLootTable:"celeste:entities/none",Tags:["celeste_refill_gem_destroyer"],Facing:0b,Invisible:1b,Marker:1b,Small:1b}}}}

# UX
playsound minecraft:entity.player.levelup neutral @a ~ ~ ~ 1 0.5
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 8
particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.25 0.25 0.25 0.03125 8

# Remove glass and redstone block
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:8b}},sort=nearest,limit=1]
kill