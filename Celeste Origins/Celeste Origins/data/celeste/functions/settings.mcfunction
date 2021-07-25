
# These can be changed in-game as well and will be preserved until the scoreboard is removed



### Springs ###

# Whether horizontal pushing of springs and its sound should be enabled by default for newly joining players (>=1) or not (<=0) (default: 0)
# Does not concern vertical springs or whether the dash/stamina are reset by springs as they're controlled separately (there are functions to enable or disable them for the player the command is executed by/as)
execute unless score $default clst_spring_hztl = $default clst_spring_hztl run scoreboard players set $default clst_spring_hztl 0

# This is probably not of use for you. Will be virtually added to the score of each player when checking for the condition. For example if the offset is 3 players with scores of -3 and below won't be pushed horizontally, and players with 4 or more will, and if the offset is -5 players with scores of 5 and below won't be pushed, but players with scores of 6 and up will. Note that the functions enabling/disabling horizontal pushing set to offset+1 and offset respectively, not 1 and 0, but a simple scoreboard players set @s clst_spring_hztl 0/1/whatever will do the trick just fine.
execute unless score $offset clst_spring_hztl = $offset clst_spring_hztl run scoreboard players set $offset clst_spring_hztl 0

# The amount of ticks the player will be pushed by springs for (default: 5)
execute unless score $ticks clst_spring_time = $ticks clst_spring_time run scoreboard players set $ticks clst_spring_time 5



### Refill gems ###

# The amount of ticks between each particle spawning by refill gems (default: 5)
execute unless score $ticks clst_rg_pcl_time = $ticks clst_rg_pcl_time run scoreboard players set $ticks clst_rg_pcl_time 5
# The amount of ticks for a refill gem to "respawn" after being consumed (default: 50)
execute unless score $ticks clst_rg_rwn_time = $ticks clst_rg_rwn_time run scoreboard players set $ticks clst_rg_rwn_time 50

# Whether players (whether they have the power or not) can "craft" refill gem spawners/destroyers (1) or not (0) (default: 1)
# Spawners are also obtainable through the celeste:refill_gem/give_spawner function, and placeable with the celeste:refill_gem/place function
# Run the celeste:refill_gem/give_destroyer function to get a destroyer, or the celeste:refill_gem/destroy to remove any respawn gem in a 3x3x3 area.
# Alternatively you can use the @e[tag=celeste_refill_gem] selector to target refill gems, for example /kill @e[tag=celeste_refill_gem,distance=..16,sort=nearest,limit=4] removes the 4 closest refill gems in a radius of 16 blocks
execute unless score $on clst_rg_crafting = $on clst_rg_crafting run scoreboard players set $on clst_rg_crafting 1
# Whether refill gems that are destroyed should drop their spawn egg or not (default: 1)
execute unless score $dropOnDestroy clst_rg_crafting = $dropOnDestroy clst_rg_crafting run scoreboard players set $dropOnDestroy clst_rg_crafting 1



### Feathers ###

# Same as for feathers (default: 10)
execute unless score $ticks clst_ft_pcl_time = $ticks clst_ft_pcl_time run scoreboard players set $ticks clst_ft_pcl_time 10
# The interval in ticks between each 45° rotation of the feather (default: 3)
execute unless score $ticks clst_ft_rot_time = $ticks clst_ft_rot_time run scoreboard players set $ticks clst_ft_rot_time 4
# Same as for feathers (default: 50)
execute unless score $ticks clst_ft_rwn_time = $ticks clst_ft_rwn_time run scoreboard players set $ticks clst_ft_rwn_time 50
# Same as for feathers (default: 1)
execute unless score $on clst_ft_crafting = $on clst_ft_crafting run scoreboard players set $on clst_ft_crafting 1
# Same as for feathers (default: 1)
execute unless score $dropOnDestroy clst_ft_crafting = $dropOnDestroy clst_ft_crafting run scoreboard players set $dropOnDestroy clst_ft_crafting 1



# Thanks to eggohito for suggesting to make the values dynamic