execute as @e[type=item,tag=cbp.shot_item_projectiles,predicate=cbp:totem_of_undying,distance=0..] at @s run function cbp:after_action/undying/setup

execute as @e[tag=cbp.undying_protection,distance=0..] at @s unless entity @e[predicate=cbp:totem_of_undying,distance=..5] run effect clear @s resistance
#execute as @e[tag=cbp.undying_protection] at @s unless entity @e[predicate=cbp:totem_of_undying,distance=..5] run tag @s remove cbp.ignore_effect
execute as @e[tag=cbp.undying_protection,distance=0..] at @s unless entity @e[predicate=cbp:totem_of_undying,distance=..5] run tag @s remove cbp.undying_protection
