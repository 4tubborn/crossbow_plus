tp @s ~ ~ ~ 0.0 0.0
scoreboard players set @s cbp.ray_steps 0
tag @e[distance=..5] add cbp.undying_protection

execute as @e[tag=cbp.undying_protection,distance=..5] at @s run effect give @s resistance infinite 4 true

function cbp:after_action/undying/loop