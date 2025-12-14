#特性：if data只能检测非默认组件（与data get一致） 弩未装填时尽管有空的charged_projectile默认组件，但是if data检测不到，也就是说可以用if data entity @s SelectedItem.components."minecraft:charged_projectiles"检测弩是否装填
execute if items entity @s weapon.mainhand crossbow[enchantments~[{enchantments:"minecraft:multishot",levels:{min:100,max:255}}]] run item modify entity @s weapon.mainhand {function:"set_components",components:{lore:[{text:"警告：过高等级的多重射击有bug，请勿使用！",color:"red",italic:false}]}}
#将projectile存到storage中，因为发射后弩的charged_projectiles会被立刻清空

execute if entity @s[predicate=cbp:item_projectiles] run function cbp:modify_player/update_projectile_data with entity @s
#ignore一些原版行为（装填箭、烟花火箭）

execute if items entity @s weapon.mainhand crossbow unless data entity @s SelectedItem.components."minecraft:charged_projectiles" run item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{ignore:false}}}
execute if entity @s[predicate=!cbp:item_projectiles] if data entity @s SelectedItem.components."minecraft:charged_projectiles" unless data entity @s equipment.offhand run return run item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{ignore:true}}}
execute if entity @s[predicate=!cbp:item_projectiles] if data entity @s SelectedItem.components."minecraft:charged_projectiles" if items entity @s weapon.offhand #arrows run return run item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{ignore:true}}}
execute if entity @s[predicate=!cbp:item_projectiles] if data entity @s SelectedItem.components."minecraft:charged_projectiles" if items entity @s weapon.offhand firework_rocket run return run item modify entity @s weapon.mainhand {function:"set_components",components:{custom_data:{ignore:true}}}

#更新弩的charged_projectiles组件
execute if entity @s[predicate=!cbp:item_projectiles] if data entity @s SelectedItem.components."minecraft:charged_projectiles" unless data entity @s {"SelectedItem":{"components":{"minecraft:custom_data":{"ignore":true}}}} if items entity @s weapon.offhand #bundles run return run function cbp:modify_player/apply_projectiles with entity @s equipment.offhand.components."minecraft:bundle_contents"[0]
execute if entity @s[predicate=!cbp:item_projectiles] if data entity @s SelectedItem.components."minecraft:charged_projectiles" unless data entity @s {"SelectedItem":{"components":{"minecraft:custom_data":{"ignore":true}}}} run return run function cbp:modify_player/apply_projectiles with entity @s equipment.offhand

#say "cannot motify component"
