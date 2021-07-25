
function celeste:feather/internal/summon_spawner

# UX
playsound minecraft:entity.player.levelup neutral @a
particle minecraft:falling_honey ~ ~0.625 ~ 0.125 0.125 0.125 0.5 8
particle minecraft:flash

# Remove feather, glass and gold block
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:7b}},sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:feather",Count:1b}},sort=nearest,limit=1]
kill