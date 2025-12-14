$data modify storage cbp tmp_projectile_id set from storage cbp projectile_id."$(UUID)"
#替换特殊物品
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:water_bucket"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:water"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:lava_bucket"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:lava"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:fire_charge"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:small_fireball"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:dragon_breath"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:dragon_fireball"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:ghast_tear"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:llama_spit"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:shulker_shell"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:shulker_bullet"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:wither_skeleton_skull"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:wither_skull"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:powder_snow_bucket"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:powder_snow"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:flint_and_steel"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:fire"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:lightning_rod"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:lightning"
execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:waxed_lightning_rod"}} run data modify storage cbp tmp_projectile_id.id set value "minecraft:lightning"


execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:lightning_rod"}} run say 1

data modify storage cbp tmp_projectile_id.id set string storage cbp tmp_projectile_id.id 10

#只在发射后移除，但切换到非弩物品时仍不会移除（神秘bug）
$data remove storage cbp projectile_id."$(UUID)"