# Called by crawly:check/states/load and crawly:check/roof_states/load
# Checks if a crawl entity already exists in the direction the player wants to crawl

function crawly:get_direction
scoreboard players set #temp crawly 1
execute if score #direction crawly matches 1 if entity @e[type=minecraft:shulker,tag=crawly,distance=...9,scores={crawly=1}] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 2 if entity @e[type=minecraft:shulker,tag=crawly,distance=...9,scores={crawly=2}] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 3 if entity @e[type=minecraft:shulker,tag=crawly,distance=...9,scores={crawly=3}] run scoreboard players set #temp crawly 0
execute if score #direction crawly matches 4 if entity @e[type=minecraft:shulker,tag=crawly,distance=...9,scores={crawly=4}] run scoreboard players set #temp crawly 0
