# Set respawn score if not already
execute unless score @s clst_rg_rwn_time = @s clst_rg_rwn_time run scoreboard players set @s clst_rg_rwn_time -1

# Particles:
# If no score set set to duration
execute unless score @s clst_rg_pcl_time = @s clst_rg_pcl_time run scoreboard players operation @s clst_rg_pcl_time = $ticks clst_rg_pcl_time
# Reached tick modulo interval, run particle function
execute if score @s clst_rg_pcl_time matches ..0 if score @s clst_rg_rwn_time matches ..0 at @s run particle minecraft:composter ~ ~ ~ 0.125 0.125 0.125 0.25 1 normal
# Tick
scoreboard players add @s clst_rg_pcl_time 1
scoreboard players operation @s clst_rg_pcl_time %= $ticks clst_rg_pcl_time

# Respawn gems and tick down respawn timer
execute if score @s clst_rg_rwn_time matches 0 run data modify entity @s Item set value {id:"minecraft:emerald_block",Count:1b}
execute if score @s clst_rg_rwn_time matches 0.. run scoreboard players remove @s clst_rg_rwn_time 1

# If consuming player comes close, make them run the consume function (which removes their closest gem - not perfect but the other option is to select the player twice which isn't great either)
# Credits: https://www.youtube.com/watch?v=kKS3sF0X4Is
execute if score @s clst_rg_rwn_time matches ..0 at @s positioned ~-0.3333 ~-0.3333 ~-0.3333 as @e[type=minecraft:player,dx=0,sort=nearest,limit=1] positioned ~-0.3333 ~-0.3333 ~-0.3333 if entity @s[dx=0] if score @s clst_rg_schedule = @s clst_rg_schedule positioned ~0.6666 ~0.6666 ~0.6666 run function celeste:refill_gem/internal/consume

# Thanks to eggohito for the little performance/cleanness improvements