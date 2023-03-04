#定期清理防止数量超限

#免死金牌：5格内没有"另外的"node，保留
execute as @e[tag=node] at @s unless entity @e[distance=0.5..5,tag=node] run tag @s add lonely

#过1000减500……设定上限也是一次减500
execute store result score node_count maze_settings if entity @e[tag=node,tag=maze]
scoreboard players operation goal_plus500 maze_settings = goal_count maze_settings
scoreboard players add goal_plus500 maze_settings 500

execute if score node_count maze_settings > node_limit maze_settings if score node_count maze_settings > goal_plus500 maze_settings run kill @e[sort=random,tag=node,tag=!lonely,limit=500]
#不过如果goal_count本身就超500……就1000过了还不会清……另外500可能用其他清法了……


#免死金牌是一次性的
tag @e[tag=node,tag=lonely] remove lonely

scoreboard players operation cleanremain maze_settings = cleanloop maze_settings
