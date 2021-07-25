scoreboard players operation #temp clst_spring_hztl = @s clst_spring_hztl
scoreboard players operation #temp clst_spring_hztl += $offset clst_spring_hztl
execute if score #temp clst_spring_hztl matches 1.. run function celeste:spring/internal/push