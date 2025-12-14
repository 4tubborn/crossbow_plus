#不兼容多重射击，故废弃
execute on origin at @s anchored eyes rotated as @s run summon text_display ^ ^ ^ {Tags:["cbp.ray"]}
execute on origin at @s anchored eyes rotated as @s run data modify entity @n[type=text_display,tag=cbp.ray] Rotation set from entity @n[type=arrow] Rotation
#1.21.2及之后的版本可用下列命令替换上一行命令
#execute on origin at @s anchored eyes rotated as @s run rotate @n[type=text_display,tag=cbp.ray] ~ ~
kill @s

execute as @n[type=text_display,tag=cbp.ray] at @s run function cbp:after_action/ray/forward_sonic_boom
