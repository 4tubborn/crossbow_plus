data modify entity @s ShowBottom set value false
summon item ~ ~ ~ {"PickupDelay":32767,Tags:["item_projectiles"],Item:{"id":"structure_void"}}

data modify entity @n[tag=item_projectiles,type=item,distance=..5] Motion set from entity @n[tag=item_projectiles,type=falling_block,distance=..5] Motion
ride @s mount @n[tag=item_projectiles,type=item,distance=..5]

tag @s remove item_projectiles
tag @n[tag=item_projectiles,type=item,distance=..5] add cbp.remove_item_projectiles
tag @n[tag=item_projectiles,type=item,distance=..5] remove item_projectiles
kill @n[tag=item_projectiles,type=falling_block,distance=..5]