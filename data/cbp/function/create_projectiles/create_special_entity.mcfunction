$summon $(id) ^ ^ ^ {"Tags":["item_projectiles"],"Item":{id:"$(id)",components:$(components)}}
execute as @n[tag=item_projectiles,type=end_crystal,distance=..5] run return run function cbp:after_action/special_entity_motion
data modify entity @n[tag=item_projectiles,type=trident,distance=..5] pickup set value 1b
data modify storage cbp tmp_create_cmd set value 0


function cbp:after_action/rm_falling_block

