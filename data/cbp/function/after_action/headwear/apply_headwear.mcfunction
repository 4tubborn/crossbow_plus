damage @n[distance=..2,type=!#cbp:intangible_headwear] 0 falling_anvil by @s

execute as @n[distance=..2,type=!#cbp:intangible_headwear] at @s run function cbp:after_action/headwear/drop_headwear with entity @s equipment
$item replace entity @n[distance=..2,type=!#cbp:intangible_headwear] armor.head with $(Name)
kill @s