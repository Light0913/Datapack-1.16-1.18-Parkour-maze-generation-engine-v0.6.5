#目前也就一个示意么……

setblock ~ ~-1 ~ minecraft:shroomlight
setblock ~ ~ ~ minecraft:light_weighted_pressure_plate
scoreboard players set remain maze_settings -1
kill @s[tag=node]
