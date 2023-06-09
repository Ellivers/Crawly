# Called by crawly:check/load
# Checks for block state exceptions

function crawly:get_direction
scoreboard players set #temp crawly 1

execute if block ~ ~ ~ #crawly:groups/pane_likes if block ~ ~-.7 ~ #crawly:groups/pane_likes run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:lantern if block ~ ~-.7 ~ minecraft:lantern run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:soul_lantern if block ~ ~-.7 ~ minecraft:soul_lantern run scoreboard players set #temp crawly 0

execute if block ~ ~-.7 ~ #minecraft:trapdoors[facing=north,open=true] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:cake if block ~ ~-.7 ~ minecraft:cake run function crawly:check/special/cake
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 1 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=south] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 2 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=north] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 3 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=west] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 4 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=east] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 1 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=north] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 2 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=south] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 3 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=east] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 4 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=west] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if block ~ ~-.7 ~ minecraft:pointed_dripstone[vertical_direction=up] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=east] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=west] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=east] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=west] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=north] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=south] run scoreboard players set #temp crawly 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=north] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=south] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 1..2 if block ~ ~ ~ #minecraft:fence_gates[facing=north] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 1..2 if block ~ ~ ~ #minecraft:fence_gates[facing=south] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 3..4 if block ~ ~ ~ #minecraft:fence_gates[facing=east] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 3..4 if block ~ ~ ~ #minecraft:fence_gates[facing=west] unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run scoreboard players set #temp crawly 0

function #crawly:check_states

execute if score #temp crawly matches 1 run function crawly:check/motion
