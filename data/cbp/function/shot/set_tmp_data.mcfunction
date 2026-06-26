$data modify storage cbp tmp_projectile_id set from storage cbp projectile_id."$(UUID)"
#替换特殊物品

function cbp:shot/set_

#execute if data storage cbp {"tmp_projectile_id":{"id":"minecraft:lightning_rod"}} run say 1

#data modify storage cbp tmp_projectile_id.id set string storage cbp tmp_projectile_id.id 10

#只在发射后移除，但切换到非弩物品时仍不会移除（神秘bug）
$data remove storage cbp projectile_id."$(UUID)"