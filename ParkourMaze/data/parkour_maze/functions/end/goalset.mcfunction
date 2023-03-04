execute as @e[sort=random,limit=1,tag=node,tag=!new] at @s run function parkour_maze:ways/_unit/extra/goal
#还有则继续
scoreboard players remove goal_remain maze_settings 1
execute unless score goal_remain maze_settings matches ..0 run function parkour_maze:end/goalset
