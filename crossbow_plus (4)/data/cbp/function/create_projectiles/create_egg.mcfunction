$summon egg ^ ^ ^ {"Tags":["item_projectiles"],"Item":{"id":"$(id)",components:$(components)}}
data modify storage cbp tmp_create_cmd set value 1
function cbp:after_action/rm_falling_block