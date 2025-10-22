# Called by crawly:check/load
# Does a preliminary check for the block that is to be crawled through

# Direction is needed regardless
function crawly:get_direction

execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run return 0
execute if block ~ ~ ~ #crawly:groups/amethyst_growths[facing=down] run return 0

execute store success score #temp crawly if block ~ ~-.7 ~ #crawly:crawl_through_always
execute if score #temp crawly matches 0 store result score #temp crawly run function crawly:check/states/main

execute if score #temp crawly matches 0 run return 0

function crawly:check/motion
