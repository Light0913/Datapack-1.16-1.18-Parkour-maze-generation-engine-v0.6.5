#先判断是否能活，后面还有判断碰头块……
#碰头块的话，如果碰到bedrock，单独剔除即可，不必整条线废除
execute as @e[tag=path,tag=hit,tag=maze] at @s if block ~ ~ ~ #parkour_maze:bedrock run kill @s

#flag
tag @e[tag=new,tag=node,tag=maze,tag=!oneway] add okk
#单行道
execute as @e[tag=node,tag=new,tag=maze,tag=oneway] at @s align xyz if block ~ ~ ~ #parkour_maze:path run tag @s add okk
execute as @e[tag=node,tag=new,tag=maze,tag=oneway] at @s align xyz if block ~1 ~1 ~ #parkour_maze:path run tag @s add okk
execute as @e[tag=node,tag=new,tag=maze,tag=oneway] at @s align xyz if block ~-1 ~1 ~ #parkour_maze:path run tag @s add okk
execute as @e[tag=node,tag=new,tag=maze,tag=oneway] at @s align xyz if block ~ ~1 ~1 #parkour_maze:path run tag @s add okk
execute as @e[tag=node,tag=new,tag=maze,tag=oneway] at @s align xyz if block ~ ~1 ~-1 #parkour_maze:path run tag @s add okk


#上下空间限制
#/execute align xyz if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run say hi
#上面示例：仅在允许方块出现的空间时能有输出，但换成unless时总是没有输出
##1_node
execute as @e[tag=node,tag=new,tag=maze,tag=okk] at @s align xyz if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run tag @s add ok
##2_path
tag @e[tag=path,tag=maze] add error
execute as @e[tag=path,tag=maze,tag=error] at @s if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run tag @e[tag=path,tag=maze] remove error
execute if entity @e[tag=path,tag=maze,tag=error] run tag @e[tag=node,tag=new,tag=maze,tag=ok] remove ok



#bedrock
execute at @e[tag=path,tag=maze] align xyz if block ~ ~ ~ #parkour_maze:bedrock run tag @e[tag=node,tag=new,tag=ok] remove ok
execute as @e[tag=node,tag=new,tag=maze,tag=ok] at @s align xyz if block ~ ~ ~ #parkour_maze:bedrock run tag @s remove ok

#path
execute as @e[tag=node,tag=new,tag=maze,tag=ok] at @s align xyz if block ~ ~-1 ~ #parkour_maze:path run tag @s remove ok




#不许重复
execute as @e[tag=node,tag=new,tag=maze,tag=ok] at @s align xyz if block ~ ~-1 ~ #parkour_maze:bedrock run tag @s remove ok




#通过
execute if entity @e[tag=node,tag=new,tag=ok] run function parkour_maze:ways/5_block
#失败
execute unless entity @e[tag=node,tag=new,tag=ok] run function parkour_maze:ways/5b_bad





#解决掉path与turnable以及ok和okk和new
kill @e[tag=path]
execute as @e[tag=node,tag=new,tag=!ok] run kill @s
tag @e[tag=node,tag=turnable] remove turnable
tag @e[tag=node,tag=ok] remove ok
tag @e[tag=node,tag=okk] remove okk
tag @e[tag=node,tag=new] remove new

