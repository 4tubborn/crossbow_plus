function cbp:shot/set_tmp_data with entity @s

#tellraw @a ["main: ",{entity:"@s",nbt:"SelectedItem.components"}]
#给玩家添加标签防止选中错误玩家
tag @s add cbp.player

execute as @e[type=arrow,distance=..10,predicate=cbp:item_arrow] at @s run function cbp:create_projectiles/summon_item_projectiles
item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{item_projectiles:false}}}
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{ignore:false}}

advancement revoke @s only cbp:shot_crossbow

tag @s remove cbp.player
#data remove storage cbp tmp_projectile_id
#清除缓存的create类型
data remove storage cbp tmp_create_cmd