execute as @e[type=minecraft:item_frame,tag=celeste_feather,sort=nearest,limit=1] at @s run function celeste:feather/internal/get_consumed
scoreboard players set @s clst_ft_schedule 1