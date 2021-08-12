execute store result score @s alut-yaw run data get entity @s Rotation[0]
scoreboard players operation @s alut-yaw %= #360 alut-yaw
scoreboard players operation @s alut-yaw += $offset alut-yaw
execute if score @s alut-yaw matches 180.. run scoreboard players operation @s alut-yaw -= #360 alut-yaw
scoreboard players set $offset alut-yaw 0