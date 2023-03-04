#大朝向
#第一为经度（右为正，0面向z+），第二为维度（下为正，-90~90）
scoreboard players set mod randomer 4
function randomer:my

execute if score @s randomer matches 0 rotated 0 0 run function parkour_maze:ways/2_select
execute if score @s randomer matches 1 rotated 90 0 run function parkour_maze:ways/2_select
execute if score @s randomer matches 2 rotated 180 0 run function parkour_maze:ways/2_select
execute if score @s randomer matches 3 rotated 270 0 run function parkour_maze:ways/2_select