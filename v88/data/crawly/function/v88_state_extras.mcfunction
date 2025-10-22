execute if block ~ ~ ~ #minecraft:copper_chests if block ~ ~-.7 ~ #minecraft:copper_chests run return run scoreboard players set #temp crawly 0

execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #minecraft:wooden_shelves[facing=north] run return run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #minecraft:wooden_shelves[facing=south] run return run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #minecraft:wooden_shelves[facing=east] run return run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #minecraft:wooden_shelves[facing=west] run return run scoreboard players set #temp crawly 0
