# Called by crawly:check/states/main and crawly:check/states/roof
# Checks motion and some special cases

# Check neighbouring blocks
execute if score #direction crawly matches 1..2 unless block ~.3 ~-.7 ~ #crawly:crawl_through run return 0
execute if score #direction crawly matches 1..2 unless block ~-.3 ~-.7 ~ #crawly:crawl_through run return 0
execute if score #direction crawly matches 3..4 unless block ~ ~-.7 ~.3 #crawly:crawl_through run return 0
execute if score #direction crawly matches 3..4 unless block ~ ~-.7 ~-.3 #crawly:crawl_through run return 0

# Check extended fence/wall collision
execute if score #direction crawly matches 1 if block ~ ~-1.5 ~ #minecraft:fences[south=true] run return 0
execute if score #direction crawly matches 2 if block ~ ~-1.5 ~ #minecraft:fences[north=true] run return 0
execute if score #direction crawly matches 3 if block ~ ~-1.5 ~ #minecraft:fences[west=true] run return 0
execute if score #direction crawly matches 4 if block ~ ~-1.5 ~ #minecraft:fences[east=true] run return 0
execute if score #direction crawly matches 1 if block ~ ~-1.5 ~ #minecraft:walls unless block ~ ~-1.5 ~ #minecraft:walls[south=none] run return 0
execute if score #direction crawly matches 2 if block ~ ~-1.5 ~ #minecraft:walls unless block ~ ~-1.5 ~ #minecraft:walls[north=none] run return 0
execute if score #direction crawly matches 3 if block ~ ~-1.5 ~ #minecraft:walls unless block ~ ~-1.5 ~ #minecraft:walls[west=none] run return 0
execute if score #direction crawly matches 4 if block ~ ~-1.5 ~ #minecraft:walls unless block ~ ~-1.5 ~ #minecraft:walls[east=none] run return 0

scoreboard players set #temp crawly 2
execute store result score #temp2 crawly run data get entity @s Motion[1] 100
execute if score #temp2 crawly matches -10.. run function crawly:spawn/spawn
