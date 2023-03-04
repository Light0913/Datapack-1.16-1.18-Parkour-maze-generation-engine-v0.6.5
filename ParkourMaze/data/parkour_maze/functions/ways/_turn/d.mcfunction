#execute as @e positioned as @s run teleport @s ^ ^ ^3
#上面这样可以实现一切生物以我的视线为准向前移动
#execute align xyz run tp @e[dy=1,dx=0,dz=0] @p
#这样的选择器可以精确到格子
tag @e[tag=path] add turning
tag @e[tag=node,tag=new] add turning
execute align xyz run tag @e[y=0,dy=256,dx=0,dz=0,tag=turning] remove turning


execute as @e[tag=turning,tag=maze] positioned as @s run teleport @s ^-1 ^ ^-1