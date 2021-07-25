execute as @e[tag=celeste_refill_gem,sort=nearest,limit=1] at @s run function celeste:refill_gem/internal/get_consumed
scoreboard players set @s clst_rg_schedule 1