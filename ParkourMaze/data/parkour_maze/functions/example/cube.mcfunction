function parkour_maze:end
execute align xyz run fill ~-1 ~-15 ~-1 ~30 ~15 ~30 minecraft:stone_bricks outline
execute align xyz run fill ~ ~-14 ~ ~29 ~14 ~29 minecraft:stone
execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players set limit maze_settings 8000
execute align xyz run function parkour_maze:start