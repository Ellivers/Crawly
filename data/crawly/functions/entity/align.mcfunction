# Called by crawly:check/load
# Commands to run tickly for nearby Crawly entities

execute if score @s crawly matches 1..2 align yz positioned ~ ~ ~.5 run function crawly:entity/check
execute if score @s crawly matches 3..4 align xy positioned ~.5 ~ ~ run function crawly:entity/check
