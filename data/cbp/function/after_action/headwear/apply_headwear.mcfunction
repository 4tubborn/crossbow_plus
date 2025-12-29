damage @n[distance=..2,type=!falling_block] 0 falling_anvil by @s
execute as @n[distance=..2,type=!falling_block] at @s run function cbp:after_action/headwear/drop_headwear with entity @s equipment
$item replace entity @n[distance=..2,type=!falling_block] armor.head with $(Name)
kill @s