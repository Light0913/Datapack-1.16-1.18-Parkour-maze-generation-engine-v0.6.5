#计划开启方式

scoreboard players remove @e[tag=plan,tag=maze] maze_settings 1
execute as @e[tag=plan,tag=maze,scores={maze_settings=0}] at @s run function parkour_maze:start
kill @e[tag=plan,tag=maze,scores={maze_settings=..0}]


#状态
execute if score stepping maze_settings matches 1 run scoreboard players operation multistep_remain maze_settings = multistep maze_settings
execute if score stepping maze_settings matches 1 run function parkour_maze:tick/step

#结束提示消息
execute if score stepping maze_settings matches -1 as @a run function parkour_maze:end/message
execute if score stepping maze_settings matches -1 run scoreboard players set stepping maze_settings 0


#游戏性：得分点
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function parkour_maze:game/point_at
#原本用实体表示终点，现在就一个压力板了
#execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ #parkour_maze:point run function parkour_maze:game/point_reset

