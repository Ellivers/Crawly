# Called by crawly:check/load
# Commands to run tickly for nearby Crawly entities

scoreboard players set #temp crawly 0
scoreboard players operation #ID_temp crawly = @s crawly.id
execute if score @s crawly matches 1..2 align yz positioned ~ ~ ~.5 as @a if score @s crawly.id = #ID_temp crawly run function crawly:entity/check
execute if score @s crawly matches 3..4 align xy positioned ~.5 ~ ~ as @a if score @s crawly.id = #ID_temp crawly run function crawly:entity/check
execute if score #temp crawly matches 0 run function crawly:entity/remove
