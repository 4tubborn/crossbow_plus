#say forward
particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 force
damage @n[distance=..2] 5 sonic_boom by @s
scoreboard players add @s cbp.ray_steps 1
execute if score @s cbp.ray_steps matches 50.. run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~ #cbp:can_pass run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-0.5 run function cbp:after_action/ray/forward_sonic_boom