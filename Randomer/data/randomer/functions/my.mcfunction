summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["randomer"]}
execute store result score @s randomer run data get entity @e[tag=randomer,limit=1] UUID[0]
kill @e[tag=randomer,limit=1]
scoreboard players operation @s randomer %= mod randomer