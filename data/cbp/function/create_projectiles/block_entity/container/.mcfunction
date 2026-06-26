data modify storage cbp tmp_container set from storage cbp tmp_projectile_id.components."minecraft:container"
data modify entity @n[type=falling_block,tag=item_projectiles,distance=..5] TileEntityData.CustomName set from storage cbp tmp_projectile_id.components."minecraft:custom_name"
data modify entity @n[type=falling_block,tag=item_projectiles,distance=..5] TileEntityData.Items set value []
function cbp:create_projectiles/block_entity/container/p