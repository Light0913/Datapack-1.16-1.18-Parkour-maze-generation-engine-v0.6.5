function parkour_maze:end
execute align xyz run fill ~-1 ~-5 ~-1 ~50 ~5 ~50 minecraft:barrier outline
execute align xyz run fill ~ ~-4 ~ ~49 ~4 ~49 minecraft:stone
execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players set limit maze_settings 8000
execute align xyz run function parkour_maze:start