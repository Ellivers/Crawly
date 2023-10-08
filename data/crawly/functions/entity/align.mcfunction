# Called by crawly:main
# Commands to run tickly for nearby Crawly entities

scoreboard players set #temp crawly 0

execute if entity @s[type=minecraft:interaction] on passengers run scoreboard players set #temp crawly 1
execute if entity @s[type=minecraft:interaction] if score #temp crawly matches 0 run kill
execute if entity @s[type=minecraft:interaction] run return 0

scoreboard players operation #ID_temp crawly = @s crawly.id
execute align y positioned ^ ^ ^.4 as @a if score @s crawly.id = #ID_temp crawly run function crawly:entity/check
execute if score #temp crawly matches 0 run function crawly:entity/remove
