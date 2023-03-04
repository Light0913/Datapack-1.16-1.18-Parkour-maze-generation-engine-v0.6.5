#execute unless score stepping maze_settings matches 1 run say hi
#如此则可以“断电续打”（退出后或reload后回来仍然可以工作）
#但如果没有相应计分板，还是不会输出
#用户错误可以输出，甚至0也可以

scoreboard objectives add maze_settings dummy ["迷宫相关设置"]
execute as @a if score stepping maze_settings matches 1 as @a run function parkour_maze:instructions
execute as @a unless score stepping maze_settings matches 1 run function parkour_maze:init


#scoreboard players set stepping maze_settings 0
#重新加载后stepping和remain变成了0，而cleanremain和limit保留了？
#execute unless entity @e[tag=node,tag=maze] run scoreboard players set remain maze_settings -1
#目前检查出来这一句，用上的话退出后似乎会不管条件直接执行，导致退出则断
#无效化后可以“断电续打”了，不过如果要停止的话需要手动停止（然而本身这条语句也很难避免卡死emm）