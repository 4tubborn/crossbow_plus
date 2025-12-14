#say forward
particle block{block_state:{Name:diamond_block}} ~ ~ ~ 0.0 0.0 0.0 0 10 force
summon lightning_bolt ^ ^ ^-1
scoreboard players add @s cbp.ray_steps 1
execute if score @s cbp.ray_steps matches 50.. run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~ #cbp:can_pass run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-1 run function cbp:after_action/ray/forward_lightning_bolt
