#say forward
particle flame ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute as @e[distance=..2] at @s run damage @s 1 on_fire by @s
execute as @e[distance=..2] at @s run data modify entity @s Fire set value 100
scoreboard players add @s cbp.ray_steps 1
execute if score @s cbp.ray_steps matches 50.. run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~ #cbp:can_pass run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-0.5 run function cbp:after_action/ray/forward_fire_boom