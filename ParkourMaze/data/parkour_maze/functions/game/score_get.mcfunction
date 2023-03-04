scoreboard players add @s maze_score 1
tellraw @a [{"color":"yellow","text":"恭喜"},{"color":"yellow","selector":"@s"},{"color":"yellow","text":"得分！当前分数"},{"color":"yellow","score":{"name":"@s","objective":"maze_score"}}]
setblock ~ ~ ~ air
function parkour_maze:game/effect_reward


