execute store success score #success cbp.success run function cbp:create_projectiles/mid_identify/special_entity with storage cbp tmp_projectile_id
execute if score #success cbp.success matches 1 run return run function cbp:create_projectiles/create_special_entity with storage cbp tmp_projectile_id
execute store success score #success cbp.success run function cbp:create_projectiles/mid_identify/egg with storage cbp tmp_projectile_id
execute if score #success cbp.success matches 1 run return run function cbp:create_projectiles/create_egg with storage cbp tmp_projectile_id
execute store success score #success cbp.success run function cbp:create_projectiles/mid_identify/ray with storage cbp tmp_projectile_id
execute if score #success cbp.success matches 1 run return run function cbp:create_projectiles/create_ray with storage cbp tmp_projectile_id
execute store success score #success cbp.success run function cbp:create_projectiles/mid_identify/spawn_egg with storage cbp tmp_projectile_id
execute if score #success cbp.success matches 1 run return run function cbp:create_projectiles/create_spawn_egg with storage cbp tmp_projectile_id

#若都不满足则为掉落物
function cbp:create_projectiles/create_item_entity with storage cbp tmp_projectile_id