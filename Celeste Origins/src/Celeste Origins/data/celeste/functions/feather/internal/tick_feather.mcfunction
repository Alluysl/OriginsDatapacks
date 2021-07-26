# Set respawn score if not already
execute unless score @s clst_ft_rwn_time = @s clst_ft_rwn_time run scoreboard players set @s clst_ft_rwn_time -1

# Particles:
# If no score set set to 0
execute unless score @s clst_ft_pcl_time = @s clst_ft_pcl_time run scoreboard players set @s clst_ft_pcl_time 0
# Reached tick modulo interval, run particle function
execute if score @s clst_ft_pcl_time matches 0 if score @s clst_ft_rwn_time matches ..0 at @s run particle minecraft:crit ~ ~0.125 ~ 0.125 0.125 0.125 0 1 normal
# Tick
scoreboard players add @s clst_ft_pcl_time 1
scoreboard players operation @s clst_ft_pcl_time %= $ticks clst_ft_pcl_time

# Respawn feather and tick down respawn timer
execute if score @s clst_ft_rwn_time matches 0 run data modify entity @s Item set value {id:"minecraft:gold_block",Count:1b}
execute if score @s clst_ft_rwn_time matches 0.. run scoreboard players remove @s clst_ft_rwn_time 1

# If no rotation info set to 0, if no rotation timer set to 0
execute unless score @s clst_ft_rotation = @s clst_ft_rotation run scoreboard players set @s clst_ft_rotation 0
execute unless score @s clst_ft_rot_time = @s clst_ft_rot_time run scoreboard players set @s clst_ft_rot_time 0
# Rotate feather and tick rotation timer
execute if score @s clst_ft_rot_time matches 0 store result entity @s ItemRotation byte 1.0 run scoreboard players get @s clst_ft_rotation
execute if score @s clst_ft_rot_time matches 0 run scoreboard players add @s clst_ft_rotation 1
scoreboard players add @s clst_ft_rot_time 1
scoreboard players operation @s clst_ft_rot_time %= $ticks clst_ft_rot_time

# If consuming player comes close, make them run the consume function (which removes their closest feather - not perfect but the other option is to select the player twice which isn't great either)
# Credits: https://www.youtube.com/watch?v=kKS3sF0X4Is
execute if score @s clst_ft_rwn_time matches ..0 at @s positioned ~-0.3333 ~-0.3333 ~-0.3333 as @a[dx=0,sort=nearest,limit=1] positioned ~-0.3333 ~-0.3333 ~-0.3333 if entity @s[dx=0] if score @s clst_ft_schedule = @s clst_ft_schedule positioned ~0.6666 ~0.6666 ~0.6666 run function celeste:feather/internal/consume

# Thanks to eggohito for the little performance/cleanness improvements