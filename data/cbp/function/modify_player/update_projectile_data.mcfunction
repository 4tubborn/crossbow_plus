$data remove storage cbp projectile_id."$(UUID)"
$data modify storage cbp projectile_id."$(UUID)" set from entity @s SelectedItem.components."minecraft:charged_projectiles".[0]
#若没有组件也加上空组件，方便后续处理
$data modify storage cbp projectile_id."$(UUID)".components merge value {}

#tellraw @a ["ma: ",{storage:"cbp",nbt:"projectile_id"}]

#$execute if data entity @s SelectedItem.components."minecraft:charged_projectiles".[].components run data modify storage cbp projectile_components.$(UUID) set from entity @s SelectedItem.components."minecraft:charged_projectiles".[].components
#$execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles".[].components run data remove storage cbp projectile_components.$(UUID)