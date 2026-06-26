$summon falling_block ^ ^ ^ {"BlockState":{"Name":"$(id)"},"Tags":["item_projectiles"],TileEntityData:{components:$(components)}}
execute if data storage cbp tmp_projectile_id.components."minecraft:banner_patterns" run return run function cbp:create_projectiles/block_entity/banner_patterns/
execute if data storage cbp tmp_projectile_id.components."minecraft:bees" run return run function cbp:create_projectiles/block_entity/bees/
execute if data storage cbp tmp_projectile_id.components."minecraft:block_state" run return run function cbp:create_projectiles/block_entity/block_state/
execute if data storage cbp tmp_projectile_id.components."minecraft:container" run return run function cbp:create_projectiles/block_entity/container/
execute if data storage cbp tmp_projectile_id.components."minecraft:profile" run return run function cbp:create_projectiles/block_entity/profile/
