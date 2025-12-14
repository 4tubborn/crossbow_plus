scoreboard objectives remove cbp.ray_steps
scoreboard objectives remove cbp.egg
scoreboard objectives remove cbp.spawn_egg
scoreboard objectives remove cbp.special_entity
scoreboard objectives remove cbp.success
tellraw @a [\
{color:gold,translate:"此数据包相关的数据已删除，请继续执行%s命令以禁用此数据包。如有疑问，请参阅%s",with:[\
    {text:"/datapack disable <这个包的文件夹或压缩包名称>",shadow_color:[0.6,0.6,0.6,0.6],color:"gray",click_event:{action:"suggest_command",command:"/datapack disable "},hover_event:{action:"show_text",value:"单击以复制到聊天栏"}},\
    {text:"[此链接]",color:"green",click_event:{action:"open_url",url:"https://zh.minecraft.wiki/w/%E5%91%BD%E4%BB%A4/datapack"}},\    
]},\
{color:"yellow",translate:"\n警告：此时请不要继续使用弩，若要重载数据，请使用%s",with:[\
    {text:"/reload命令",click_event:{action:"suggest_command",command:"/reload"},hover_event:{action:"show_text",value:"单击以复制到聊天栏"},color:"yellow"}]}\
]