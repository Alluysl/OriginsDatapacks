
function celeste:refill_gem/internal/summon_spawner

# UX
playsound minecraft:entity.player.levelup neutral @a
particle minecraft:composter ~ ~0.25 ~ 0.25 0.25 0.25 0.5 8
particle minecraft:flash

# Remove glass and emerald block
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:8b}},sort=nearest,limit=1]
kill