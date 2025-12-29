$summon item ^ ^ ^ {"Tags":["item_projectiles"],"Item":{"id":"$(id)",components:$(components)},"PickupDelay":40}

data modify entity @n[type=item,tag=item_projectiles,predicate=cbp:totem_of_undying,predicate=!cbp:on_ground,distance=..5] Age set value 5400s
data modify entity @n[type=item,tag=item_projectiles,predicate=cbp:totem_of_undying,predicate=!cbp:on_ground,distance=..5] PickupDelay set value 32767s
data modify storage cbp tmp_create_cmd set value 2
function cbp:after_action/rm_falling_block