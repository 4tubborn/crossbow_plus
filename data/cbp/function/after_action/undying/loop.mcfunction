execute as @s anchored eyes run particle dust{color:[1,1,220],scale:1} ^ ^ ^5
tp @s ~ ~ ~ ~5 ~
scoreboard players add @s cbp.ray_steps 5
execute unless score @s cbp.ray_steps matches 360.. rotated as @s run function cbp:after_action/undying/loop