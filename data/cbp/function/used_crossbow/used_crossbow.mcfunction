function cbp:used_crossbow/set_tmp_data with entity @s

execute as @e[type=arrow,distance=..10,predicate=cbp:item_arrow] at @s run function cbp:create_projectiles/summon_item_projectiles
item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{item_projectiles:false}}}
advancement revoke @s only cbp:using_crossbow
#data remove storage cbp tmp_projectile_id
#清除缓存的create类型
data remove storage cbp tmp_create_cmd