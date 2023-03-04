function parkour_maze:end

execute align xyz run fill ~-1 1 ~-1 ~-1 255 ~90 minecraft:stone_bricks
execute align xyz run fill ~-1 1 ~-1 ~90 255 ~-1 minecraft:stone_bricks
execute align xyz run fill ~-1 1 ~90 ~90 255 ~90 minecraft:stone_bricks
execute align xyz run fill ~90 1 ~-1 ~90 255 ~90 minecraft:stone_bricks
execute align xyz run fill ~-1 255 ~-1 ~90 255 ~90 minecraft:stone_bricks
execute align xyz run fill ~-1 1 ~-1 ~90 1 ~90 minecraft:stone_bricks

#命令方块一串，内部全是生成大片石头
#/fill ~ ~ ~ ~ ~ ~1 minecraft:command_block[conditional=false]{auto:1b,Command:"fill ~1 ~ ~ ~2 ~ ~ stone"}
#如此生成的命令方块可以自动执行命令
fill ~ ~ ~ ~89 ~ ~ minecraft:command_block[conditional=false]{auto:1b,Command:"fill ~ 2 ~ ~ 254 ~89 stone"}



execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players set limit maze_settings 500000
#生成终点数
scoreboard players set goal_count maze_settings 100

#定时开启
execute align xyz run function parkour_maze:ways/_unit/_plan



