####################################################
#路线数5+4+9=18，由于随机数从0取，故取0-17为18种随机数结果
#如果添加自定义路线，另外修改的便是此function文件，否则路线无法选中
#随机数配合randomer数据包使用
#概率修正，尽量保证向上向下都有机会，平动则少一些……大概200+400+500?（向下的虽然多，但成功率低……概率修正后实际应该多留一点）

scoreboard players set mod randomer 1100
function randomer:my
####################################################
#下面的具体数字是凭感觉定的2333
#路线有权值的……理论上可以用计分板设置权重，但是那样每个回合都要算一道比较……暂时不用吧……

#1级的尽量少一些，太堵路了……
#0..199
execute if score @s randomer matches 0..19 run function parkour_maze:ways/walk/1
execute if score @s randomer matches 20..69 run function parkour_maze:ways/walk/2
execute if score @s randomer matches 70..119 run function parkour_maze:ways/walk/3
execute if score @s randomer matches 120..159 run function parkour_maze:ways/walk/4
execute if score @s randomer matches 160..199 run function parkour_maze:ways/walk/5
#200..599
execute if score @s randomer matches 200..219 run function parkour_maze:ways/jump/1
execute if score @s randomer matches 220..349 run function parkour_maze:ways/jump/2
execute if score @s randomer matches 350..489 run function parkour_maze:ways/jump/3
execute if score @s randomer matches 490..599 run function parkour_maze:ways/jump/4
#600..1099
execute if score @s randomer matches 600..609 run function parkour_maze:ways/fall/1
execute if score @s randomer matches 610..619 run function parkour_maze:ways/fall/1b
execute if score @s randomer matches 620..649 run function parkour_maze:ways/fall/2
execute if score @s randomer matches 650..699 run function parkour_maze:ways/fall/2b
execute if score @s randomer matches 700..749 run function parkour_maze:ways/fall/2c
execute if score @s randomer matches 750..849 run function parkour_maze:ways/fall/3
execute if score @s randomer matches 850..899 run function parkour_maze:ways/fall/3b
execute if score @s randomer matches 900..1019 run function parkour_maze:ways/fall/4
execute if score @s randomer matches 1020..1099 run function parkour_maze:ways/fall/4b


#附加的后期
execute if entity @e[tag=node,tag=new,tag=turnable] run function parkour_maze:ways/3_turn

scoreboard players set @s randomer -1

function parkour_maze:ways/4_live