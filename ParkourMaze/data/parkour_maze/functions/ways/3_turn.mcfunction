#仅限turnable

#直路有概率修正
scoreboard players set mod randomer 7

function randomer:my


execute if score @s randomer matches 0 run function parkour_maze:ways/_turn/b
execute if score @s randomer matches 1 run function parkour_maze:ways/_turn/d
execute if score @s randomer matches 2 run function parkour_maze:ways/_turn/p
execute if score @s randomer matches 3 run function parkour_maze:ways/_turn/q
execute if score @s randomer matches 4..6 run function parkour_maze:ways/_turn/straight

tag @e[tag=turning] remove turning
