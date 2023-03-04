#失败者


#次品清理，且若有次品，则失败次数+1（达到一定次数则认为此路已不通）
#失败计数
scoreboard players add @s maze_badchance 1
scoreboard players add @s maze_badtime 1
#并清洁
execute if score @s maze_badchance >= limit maze_badchance run function parkour_maze:tick/cleanb


#失败达宽容上限另外选一个节点（与深度优先又不一样了……）,总次数达到上限的去世
execute if score @s maze_badchance >= limit maze_badchance run tag @s remove last
execute if score @s maze_badtime >= limit maze_badtime run function parkour_maze:ways/_unit/extra/shrink