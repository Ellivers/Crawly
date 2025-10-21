# Called by crawly:check/states/main

execute if block ~ ~ ~ minecraft:cake[bites=0] run scoreboard players set #temp2 crawly 7
execute if block ~ ~ ~ minecraft:cake[bites=1] run scoreboard players set #temp2 crawly 6
execute if block ~ ~ ~ minecraft:cake[bites=2] run scoreboard players set #temp2 crawly 5
execute if block ~ ~ ~ minecraft:cake[bites=3] run scoreboard players set #temp2 crawly 4
execute if block ~ ~ ~ minecraft:cake[bites=4] run scoreboard players set #temp2 crawly 3
execute if block ~ ~ ~ minecraft:cake[bites=5] run scoreboard players set #temp2 crawly 2
execute if block ~ ~ ~ minecraft:cake[bites=6] run scoreboard players set #temp2 crawly 1

execute if block ~ ~-.7 ~ minecraft:cake[bites=0] run scoreboard players set #temp3 crawly 7
execute if block ~ ~-.7 ~ minecraft:cake[bites=1] run scoreboard players set #temp3 crawly 6
execute if block ~ ~-.7 ~ minecraft:cake[bites=2] run scoreboard players set #temp3 crawly 5
execute if block ~ ~-.7 ~ minecraft:cake[bites=3] run scoreboard players set #temp3 crawly 4
execute if block ~ ~-.7 ~ minecraft:cake[bites=4] run scoreboard players set #temp3 crawly 3
execute if block ~ ~-.7 ~ minecraft:cake[bites=5] run scoreboard players set #temp3 crawly 2
execute if block ~ ~-.7 ~ minecraft:cake[bites=6] run scoreboard players set #temp3 crawly 1

scoreboard players operation #temp2 crawly -= #temp3 crawly

execute if score #direction crawly matches 3 unless score #temp2 crawly matches 1.. run scoreboard players set #temp crawly 0

execute if score #direction crawly matches 1..2 unless score #temp2 crawly matches 5.. run scoreboard players set #temp crawly 0

execute if score #direction crawly matches 4 run scoreboard players set #temp crawly 0
