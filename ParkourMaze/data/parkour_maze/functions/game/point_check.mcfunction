execute if block ~ ~ ~ minecraft:air run tellraw @s [{"color":"yellow","text":"这个位置已经有人来过了……"}]
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function parkour_maze:game/score_get