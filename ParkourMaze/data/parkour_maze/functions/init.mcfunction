function parkour_maze:end

scoreboard objectives add maze_settings dummy ["迷宫相关设置"]
scoreboard objectives add maze_badtime dummy ["路线失败次数"]
scoreboard objectives add maze_badlocation dummy ["密度诅咒"]

scoreboard objectives add maze_atpoint dummy ["玩家在得分点"]
scoreboard objectives add maze_score dummy ["玩家得分"]
#步数上限
scoreboard players set limit maze_settings 3000
#一帧多步（如果电脑厉害的话还可以高一点，一般而言alt+f3看右下角条形图记录，如果超过格子了再加就没意义了）
scoreboard players set multistep maze_settings 10
#生成终点数（且迷宫生成时至少有这么多node存活）
scoreboard players set goal_count maze_settings 10
#tick使用
scoreboard players set stepping maze_settings 0


#节点创建路线失败次数上限
scoreboard players set limit maze_badtime 20
#失败次数宽容
scoreboard players set limit maze_badchance 15

#node数量上限与定期清理周期（一次固定清理500密集实体）
scoreboard players set node_limit maze_settings 1000
scoreboard players set cleanloop maze_settings 200

#层密度上限（抽象）与消退速度（空间较大时宜用大些的数字）
scoreboard players set limit maze_badlocation 3
scoreboard players set back maze_badlocation 2






#显示
execute as @a run function parkour_maze:instructions
#scoreboard objectives setdisplay sidebar maze_settings