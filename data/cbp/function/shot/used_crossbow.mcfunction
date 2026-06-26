function cbp:shot/set_tmp_data with entity @s

#tellraw @a ["main: ",{entity:"@s",nbt:"SelectedItem.components"}]


data modify storage cbp test set from entity @s SelectedItem
#tellraw @a ["test: ",{storage:"cbp",nbt:"test"}]

#item modify entity @s weapon.mainhand {function:"modify_contents",modifier:{function:"set_item",item:"acacia_boat"},component:"charged_projectiles"}
#item modify entity @s weapon.mainhand {function:"set_components",components:{"charged_projectiles":[{id:"acacia_boat",count:1}]}}

execute as @e[type=arrow,distance=..10,predicate=cbp:item_arrow] at @s run function cbp:create_projectiles/summon_item_projectiles
item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{item_projectiles:false}}}
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{ignore:false}}

advancement revoke @s only cbp:shot_crossbow
#data remove storage cbp tmp_projectile_id
#清除缓存的create类型
data remove storage cbp tmp_create_cmd