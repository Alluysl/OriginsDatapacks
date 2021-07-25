# Spawn pushing entities
summon minecraft:bee ~ ~0.5 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~0.375 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~0.25 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~0.125 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~-0.125 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~-0.25 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~-0.375 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}
summon minecraft:bee ~ ~-0.5 ~ {NoAI:1b,Health:1,Silent:1,Invulnerable:1,Age:-6000,DeathLootTable:"celeste:entities/none",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483627,ShowParticles:0b}],Tags:["celeste_spring_pusher"]}

# Set own tag and timer
tag @s add celeste_spring_pushed
scoreboard players operation @s clst_spring_time = $ticks clst_spring_time

# Play sound effect
function celeste:spring/internal/play_sound