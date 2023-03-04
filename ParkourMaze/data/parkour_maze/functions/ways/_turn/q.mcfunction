#execute as @e positioned as @s run teleport @s ^ ^ ^3
#上面这样可以实现一切生物以我的视线为准向前移动
#execute align xyz run tp @e[dy=1,dx=0,dz=0] @p
#这样的选择器可以精确到格子


#尾拐的一类认为新的node在路线末端
tag @e[tag=node,tag=new] add turning
execute positioned as @e[tag=node,tag=new] align xyz run tag @e[y=0,dy=256,dx=0,dz=0,tag=path] add turning


execute as @e[tag=turning,tag=maze] positioned as @s run teleport @s ^1 ^ ^-1