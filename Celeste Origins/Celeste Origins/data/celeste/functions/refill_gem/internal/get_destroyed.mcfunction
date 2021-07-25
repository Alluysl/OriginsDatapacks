# If no creative (prevents survival players from stalking creative players to get free spawners) players around, and if survival (prevents large-selector commands from dropping stuff that survival players can collect afterward)
execute if score $dropOnDestroy clst_rg_crafting matches 1.. if entity @p[gamemode=!creative,gamemode=!spectator,distance=..8] unless entity @p[gamemode=creative,distance=..8] run function celeste:refill_gem/internal/summon_spawner
# Kill self
kill