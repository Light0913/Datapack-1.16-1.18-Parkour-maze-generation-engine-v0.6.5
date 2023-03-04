
#第一个节点
execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~-1 ~ minecraft:bedrock
execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ minecraft:structure_void
execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~1 ~ minecraft:structure_void
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function parkour_maze:ways/_unit/node
tag @e[tag=node,tag=new] remove new
#分数初始化:倒计时
scoreboard players operation remain maze_settings = limit maze_settings
scoreboard players operation cleanremain maze_settings = cleanloop maze_settings
#开始！
scoreboard players set stepping maze_settings 1

#提示
tellraw @a [{"underlined":True,"color":"yellow","text":"\n[[[ click for the end function ]]]","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:end"}}]
tellraw @s [{"underlined":True,"color":"yellow","text":"\n[[[ you can also use real reload to stop ]]]","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:reload"}}]