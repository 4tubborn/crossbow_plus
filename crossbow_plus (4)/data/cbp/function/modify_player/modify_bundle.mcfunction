#25w43a之前
$item modify entity @s weapon.offhand {"function":"modify_contents",component:"bundle_contents",modifier:{function:"filtered",item_filter:{items:"$(id)"},modifier:{"function":"set_count",add:true,count:-1}}}

#25w43a及以后
#$item modify entity @s weapon.offhand {"function":"modify_contents",component:"bundle_contents",modifier:{function:"filtered",item_filter:{items:"$(id)"},on_pass:{"function":"set_count",add:true,count:-1}}}
#$item modify entity @s weapon.offhand {"function":"modify_contents",component:"bundle_contents",modifier:{function:"filtered",item_filter:{items:"$(id)"},on_fail:{"function":"set_count",count:0}}}