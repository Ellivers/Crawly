# Called by crawly:player
# Commands to run tickly for nearby Crawly entities

execute if score @s crawly matches 0 align yz positioned ~ ~ ~.5 run function crawly:entity/check
execute if score @s crawly matches 1 align xy positioned ~.5 ~ ~ run function crawly:entity/check
