#执行者为falling_block（无缓存时），或为arrow（有缓存时）
#后续处理，复制motion,owner等
data modify entity @n[tag=item_projectiles,type=!falling_block,type=!arrow,distance=..5] Motion set from entity @s Motion
data modify entity @n[type=!falling_block,tag=item_projectiles,type=!item,type=!arrow,distance=..5] Owner set from entity @p UUID
data modify entity @n[type=item,tag=item_projectiles,distance=..5] Thrower set from entity @p UUID

scoreboard players reset #success cbp.success
tag @n[tag=item_projectiles,type=!falling_block,type=!arrow,distance=..5] add cbp.shot_item_projectiles
tag @n[tag=item_projectiles,type=!falling_block,type=!arrow,distance=..5] remove item_projectiles
kill @s

