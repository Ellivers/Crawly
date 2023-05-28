# Called by crawly:check/load
# Checks for block state exceptions

function crawly:get_direction
scoreboard players set #temp crawly 1

execute if block ~ ~-.7 ~ #minecraft:trapdoors[facing=north,open=true] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:cake if block ~ ~-.7 ~ minecraft:cake run function crawly:check/special/cake

function #crawly:check_states

execute if score #temp crawly matches 1 run function crawly:check/motion
