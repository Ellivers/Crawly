# Called by crawly:check/load
# Checks for block state exceptions for blocks with roofs

function crawly:get_direction
scoreboard players set #temp crawly 1

execute if block ~ ~-.7 ~ #minecraft:trapdoors[open=true] run return 0
execute if block ~ ~-.7 ~ #minecraft:trapdoors[half=bottom] run return 0
execute if block ~ ~-.7 ~ minecraft:big_dripleaf unless block ~ ~-.7 ~ minecraft:big_dripleaf[tilt=none] run return 0
execute if block ~ ~-.7 ~ minecraft:piston_head unless block ~ ~-.7 ~ minecraft:piston_head[facing=up] run return 0

function #crawly:check_roof_states
execute if score #temp crawly matches 0 run return 0

function crawly:check/motion
