# The egg will directly summon the refill gem entity
# Slime spawn egg for the green color but spawns an item frame
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Refill Gem Spawner","color":"green"}',Lore:['{"text":"Use to place a refill gem against a block"}','{"text":"The block can be removed afterwards"}','{"text":"Punch the gem in creative mode or use a destroyer to remove it"}']}, EntityTag:{id:"minecraft:item_frame",NoAI:1b,NoGravity:1b,CanPickUpLoot:0b,Health:1,Silent:1,Invulnerable:1,DeathLootTable:"celeste:entities/none",Tags:["celeste_refill_gem"],Facing:0b,Invisible:1b,Fixed:1b,ItemDropChance:0.0d,Item:{id:"minecraft:emerald_block",Count:1b}}}}}