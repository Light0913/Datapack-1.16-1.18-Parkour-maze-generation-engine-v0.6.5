#数量至少要保证终点数
#目前node有3种死法：失败总次数上限，密度过大，数量过高（数量者在那个函数里修改，不用shrink，因为是固定杀伤数）
execute store result score node_count maze_settings if entity @e[tag=node,tag=maze]
execute if score node_count maze_settings > goal_count maze_settings run kill @s[tag=node]