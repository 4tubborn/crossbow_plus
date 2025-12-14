#执行者为箭矢
#使用缓存的create类型直接生成

#tellraw @a {storage:cbp,nbt:tmp_create_cmd}

execute if data storage cbp {"tmp_create_cmd":0} run return run function cbp:create_projectiles/create_special_entity with storage cbp tmp_projectile_id
execute if data storage cbp {"tmp_create_cmd":1} run return run function cbp:create_projectiles/create_egg with storage cbp tmp_projectile_id
execute if data storage cbp {"tmp_create_cmd":2} run return run function cbp:create_projectiles/create_item_entity with storage cbp tmp_projectile_id
execute if data storage cbp {"tmp_create_cmd":3} run return run function cbp:create_projectiles/create_ray with storage cbp tmp_projectile_id
execute if data storage cbp {"tmp_create_cmd":4} run return run function cbp:create_projectiles/create_spawn_egg with storage cbp tmp_projectile_id
#生成falling_block，然后再对特殊projectile处理



function cbp:create_projectiles/mid with storage cbp tmp_projectile_id

data modify entity @n[type=falling_block,tag=item_projectiles,distance=..5] Motion set from entity @s Motion

kill @s

#处理特殊projectile：若传入的BlockState无效（即传入的数据不是方块id），falling_block会变成沙子
execute unless data storage cbp {"tmp_projectile_id":{"id":"sand"}} if data entity @n[type=falling_block,tag=item_projectiles,distance=..5] {"BlockState":{"Name":"minecraft:sand"}} as @n[type=falling_block,tag=item_projectiles,distance=..5] run return run function cbp:create_projectiles/identify_special_entity
#tnt有对应方块所以falling_block不会变成沙子，上述判断失效，故单独做判断
execute if data storage cbp {"tmp_projectile_id":{"id":"tnt"}} as @n[type=falling_block,tag=item_projectiles,distance=..5] run return run function cbp:create_projectiles/create_special_entity with storage cbp tmp_projectile_id

tag @n[type=falling_block,tag=item_projectiles,distance=..5] add cbp.shot_item_projectiles
tag @n[type=falling_block,tag=item_projectiles,distance=..5] remove item_projectiles