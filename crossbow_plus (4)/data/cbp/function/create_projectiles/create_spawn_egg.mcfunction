#去掉_spawn_egg，只保留前面的实体id
data modify storage cbp tmp_projectile_id.id set string storage cbp tmp_projectile_id.id 0 -10

data modify storage cbp tmp_create_cmd set value 4

tellraw @a {storage:cbp,nbt:tmp_create_cmd}
function cbp:create_projectiles/create_special_entity with storage cbp tmp_projectile_id