#只会在有charged_projectiles了之后才真正生效
$item modify entity @s weapon.mainhand {function:"modify_contents",component:"charged_projectiles",modifier:{"function":"set_item","item":"$(id)"}}

#$say $(id)
#tellraw @a ["enti: ",{entity:"@s",nbt:"SelectedItem.components"}]


#由于没有components时会解析失败，所以单独拎出来

#item modify entity @s weapon.mainhand {function:"modify_contents",component:"charged_projectiles",modifier:{function:"copy_components",source:"this",}}
execute if data entity @s equipment.offhand.components run function cbp:modify_player/modify_components with entity @s equipment.offhand
item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{item_projectiles:true}}}
#生存模式的处理
execute as @s[gamemode=creative] run return 1

execute if items entity @s weapon.mainhand crossbow[enchantments~[{enchantments:infinity}]] run return fail
#不论消耗什么箭矢，返回的都是普通箭矢（bug）
execute as @s run give @s arrow
execute if items entity @s weapon.offhand #bundles run return run function cbp:modify_player/modify_bundle with entity @s equipment.offhand.components."minecraft:bundle_contents".[0]
execute if items entity @s weapon.offhand flint_and_steel run return run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:-0.015625}
execute if items entity @s weapon.offhand #cbp:returnable_buckets run return run item modify entity @s weapon.offhand {function:"set_item",item:"bucket"}
execute if entity @s run item modify entity @s weapon.offhand {function:"set_count",add:true,count:-1}