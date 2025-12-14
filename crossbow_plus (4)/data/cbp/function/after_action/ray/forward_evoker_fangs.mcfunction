#say forward
particle block{block_state:{Name:diamond_block}} ~ ~ ~ 0.0 0.0 0.0 0 1 force
summon evoker_fangs ^ ^ ^-1.3
scoreboard players add @s cbp.ray_steps 1
execute if score @s cbp.ray_steps matches 15.. run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~ #cbp:can_pass run return run function cbp:after_action/ray/end
execute positioned ^ ^ ^-1.3 run function cbp:after_action/ray/forward_evoker_fangs