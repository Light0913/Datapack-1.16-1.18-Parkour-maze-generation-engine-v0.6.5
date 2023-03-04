#English
tellraw @s [{"color":"yellow","text":"\nUse "},{"color":"yellow","underlined":True,"text":"/function parkour_maze:start","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:start"}},{"color":"yellow","text":" to bulid parkour maze.\nThe maze won't pass bedrock or barrier.\nThe maze won't build more than "},{"color":"yellow","score":{"name":"limit","objective":"maze_settings"}},{"color":"yellow","text":" steps."},{"underlined":True,"color":"yellow","text":"\n[[[ click here to change ]]]","clickEvent":{"action":"suggest_command","value":"/scoreboard players set limit maze_settings 3000"}}]

#中文
tellraw @s [{"color":"yellow","text":"\n使用"},{"color":"yellow","underlined":True,"text":"/function parkour_maze:start","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:start"}},{"color":"yellow","text":"开始建造跑酷迷宫。\n跑酷迷宫不会穿过基岩与屏障方块。\n最多建造"},{"color":"yellow","score":{"name":"limit","objective":"maze_settings"}},{"color":"yellow","text":"步"},{"color":"yellow","text":"【点此设置】\n","clickEvent":{"action":"suggest_command","value":"/scoreboard players set limit maze_settings 3000"}}]

tellraw @s [{"underlined":True,"color":"yellow","text":"[[[ or use examples ]]]","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:example/"}}]
tellraw @s [{"underlined":True,"color":"yellow","text":"[[[ click to end structing ]]]","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:end"}}]

