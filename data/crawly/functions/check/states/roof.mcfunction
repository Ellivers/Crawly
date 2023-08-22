# Called by crawly:check/load
# Checks for block state exceptions for blocks with roofs

scoreboard players set #temp crawly 1

execute if block ~ ~-.7 ~ #minecraft:trapdoors[open=true] run scoreboard players set #temp crawly 0
execute if block ~ ~-.7 ~ #minecraft:trapdoors[half=bottom] run scoreboard players set #temp crawly 0

function #crawly:check_roof_states

execute if score #temp crawly matches 1 run function crawly:check/motion
