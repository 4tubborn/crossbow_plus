
execute as @e[type=falling_block,tag=cbp.shot_item_projectiles,predicate=cbp:released] at @s run tag @s add cbp.headwear
execute if entity @e[tag=cbp.headwear] run say have