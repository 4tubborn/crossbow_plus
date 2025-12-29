summon text_display 0.0 0.0 0.0 {Tags:["cbp.ray"]}
data modify entity @n[type=text_display,tag=cbp.ray] Pos set from entity @s Motion
execute as @n[type=text_display,tag=cbp.ray] at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0
tp @n[type=text_display,tag=cbp.ray] ~ ~ ~
#tag @n[type=text_display,tag=cbp.tmp_ray] add cbp.ray
#tag @n[type=text_display,tag=cbp.tmp_ray] remove cbp.tmp_ray

scoreboard players set @n[type=text_display,tag=cbp.ray] cbp.ray_steps 0

kill @s

data modify storage cbp tmp_create_cmd set value 3

execute if data storage cbp {"tmp_projectile_id":{"id":"blaze_powder"}} as @n[type=text_display,tag=cbp.ray] at @s run return run function cbp:after_action/ray/forward_fire_boom
execute if data storage cbp {"tmp_projectile_id":{"id":"echo_shard"}} as @n[type=text_display,tag=cbp.ray] at @s run return run function cbp:after_action/ray/forward_sonic_boom
execute if data storage cbp {"tmp_projectile_id":{"id":"lightning"}} as @n[type=text_display,tag=cbp.ray] at @s run return run function cbp:after_action/ray/forward_lightning_bolt
execute if data storage cbp {"tmp_projectile_id":{"id":"clay_ball"}} as @n[type=text_display,tag=cbp.ray] at @s run return run function cbp:after_action/ray/forward_evoker_fangs
