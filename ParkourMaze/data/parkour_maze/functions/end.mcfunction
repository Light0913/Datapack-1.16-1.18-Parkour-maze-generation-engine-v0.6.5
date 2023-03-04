scoreboard players set stepping maze_settings 0
#终点设置
scoreboard players operation goal_remain maze_settings = goal_count maze_settings
execute at @e[tag=node] run kill @e[tag=goal,distance=..1]
function parkour_maze:end/goalset
#完事就清结构空位,清实体
kill @e[tag=node]
execute at @e[tag=clear] run fill ~-15 ~-10 ~-15 ~15 ~10 ~15 minecraft:air replace minecraft:structure_void
kill @e[tag=clear]
kill @e[tag=path]
#结束！
scoreboard players set stepping maze_settings -1

