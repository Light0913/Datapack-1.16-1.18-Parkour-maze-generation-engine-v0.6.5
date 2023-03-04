function parkour_maze:end
execute align xyz run fill ~-1 ~-30 ~-1 ~10 ~30 ~10 minecraft:barrier outline
execute align xyz run fill ~ ~-29 ~ ~9 ~29 ~9 minecraft:stone
execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players set limit maze_settings 6000
execute align xyz run function parkour_maze:start