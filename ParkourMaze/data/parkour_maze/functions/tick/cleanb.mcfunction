#定期清理密度过大的
#球形范围
#实际上更多是在last看不到的地方
#或许失败就清理？

execute at @e[tag=node,tag=maze,distance=..3] run scoreboard players add @e[tag=node,tag=maze,distance=..5] maze_badlocation 1
scoreboard players operation @e[tag=node,tag=maze,scores={maze_badlocation=0..}] maze_badlocation -= back maze_badlocation
execute as @e[tag=node,tag=maze] if score @s maze_badlocation >= limit maze_badlocation run function parkour_maze:ways/_unit/extra/shrink


scoreboard players operation cleanremain maze_settings = cleanloop maze_settings