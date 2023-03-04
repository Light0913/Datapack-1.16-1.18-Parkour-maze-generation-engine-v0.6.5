#^左 ^上 ^前 （药水云与雪球都是面向前方的(z+)）
#node
execute positioned ^ ^-1 ^3 run function parkour_maze:ways/_unit/node
#path
execute positioned ^ ^-1 ^1 run function parkour_maze:ways/_unit/path_h
execute positioned ^ ^ ^1 run function parkour_maze:ways/_unit/path
execute positioned ^ ^1 ^1 run function parkour_maze:ways/_unit/path
execute positioned ^ ^2 ^1 run function parkour_maze:ways/_unit/path_h
execute positioned ^ ^-1 ^2 run function parkour_maze:ways/_unit/path
execute positioned ^ ^ ^2 run function parkour_maze:ways/_unit/path
execute positioned ^ ^1 ^2 run function parkour_maze:ways/_unit/path
execute positioned ^ ^2 ^2 run function parkour_maze:ways/_unit/path_h



execute positioned ^ ^ ^3 run function parkour_maze:ways/_unit/path
execute positioned ^ ^2 ^ run function parkour_maze:ways/_unit/path_h

execute positioned ^ ^-2 ^1 run function parkour_maze:ways/_unit/path_h
execute positioned ^ ^-2 ^2 run function parkour_maze:ways/_unit/path_h


tag @e[tag=node,tag=new] add turnable