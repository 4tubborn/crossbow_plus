data modify storage cbp tmp_container[0].item.Slot set from storage cbp tmp_container[0].slot
data modify entity @n[type=falling_block,tag=item_projectiles,distance=..5] TileEntityData.Items append from storage cbp tmp_container[0].item

data remove storage cbp tmp_container[0]
execute unless data storage cbp {tmp_container:[]} run return run function cbp:create_projectiles/block_entity/container/p
data remove storage cbp tmp_container