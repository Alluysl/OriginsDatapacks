# Llama egg for the reversed color but spawns an armor stand
# The rest is pretty self-explanatory
# This entity will execute the destroy function next time it ticks (killing itself in the process)
give @p trader_llama_spawn_egg{display:{Name:'{"text":"Feather Destroyer","color":"red"}',Lore:['{"text":"Use to destroy the nearest feather in a 3x3x3 area"}']}, EntityTag:{id:"minecraft:armor_stand",NoAI:1b,NoGravity:1b,CanPickUpLoot:0b,Health:1,Silent:1,Invulnerable:1,DeathLootTable:"celeste:entities/none",Tags:["celeste_feather_destroyer"],Facing:0b,Invisible:1b,Marker:1b,Small:1b}}