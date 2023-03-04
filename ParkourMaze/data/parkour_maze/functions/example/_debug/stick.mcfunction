function parkour_maze:end
scoreboard players set limit maze_badlocation 3
scoreboard players set back maze_badlocation 2
execute align xyz run fill ~-1 1 ~-1 ~5 255 ~5 minecraft:barrier outline
execute align xyz run fill ~ 2 ~ ~4 254 ~4 minecraft:stone
execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players set limit maze_settings 10000
execute align xyz run function parkour_maze:start