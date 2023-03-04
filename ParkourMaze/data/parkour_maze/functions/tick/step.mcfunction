#execute as @e[sort=random,limit=1] run say hi
#如此选随机
#tag=!a反选

#点火
#成功则继续，失败则另外选一个节点（与深度优先又不一样了……）
execute unless entity @e[tag=last,tag=node] as @e[sort=random,limit=1,tag=node,tag=!new] at @s run tag @s add last
execute as @e[tag=last,tag=node] at @s run function parkour_maze:ways/1_rotation






#周期性清理
scoreboard players remove cleanremain maze_settings 1
execute if score cleanremain maze_settings matches ..0 run function parkour_maze:tick/clean





#计次
scoreboard players remove remain maze_settings 1
#execute if entity @e[tag=maze] unless entity @e[tag=node,tag=maze] run scoreboard players set remain maze_settings -1



#一帧多步
scoreboard players remove multistep_remain maze_settings 1
execute if score multistep_remain maze_settings matches 1.. run function parkour_maze:tick/step


#收尾
execute if score remain maze_settings matches ..0 run function parkour_maze:end