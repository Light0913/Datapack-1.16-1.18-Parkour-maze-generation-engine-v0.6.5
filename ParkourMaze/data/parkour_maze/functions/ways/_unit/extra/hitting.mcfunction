#默认0-4中0（1/5概率）
scoreboard players set mod randomer 3
function randomer:my
execute unless score @s randomer matches 0 run setblock ~ ~ ~ minecraft:structure_void