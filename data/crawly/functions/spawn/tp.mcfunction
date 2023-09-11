# Called by crawly:spawn/spawn
# Teleports the entity to where it should be

scoreboard players set #align crawly 0
execute if block ^.3 ^ ^ #crawly:dont_crawl_under unless block ~ ~ ~ #crawly:dont_crawl_under run scoreboard players set #align crawly 1
execute if block ^-.3 ^ ^ #crawly:dont_crawl_under unless block ~ ~ ~ #crawly:dont_crawl_under run scoreboard players set #align crawly 2

execute if score #align crawly matches 0 align y run tp ^ ^-.35 ^.3
execute if score #align crawly matches 1 align y run tp ^-.3 ^-.35 ^.3
execute if score #align crawly matches 2 align y run tp ^.3 ^-.35 ^.3
execute at @s rotated as @p[tag=crawly.temp] run tp ^ ^-.15 ^-.07
tag @s remove crawly.placing

execute at @s run tp @s ~ ~ ~ ~ 0

scoreboard players operation @s crawly.id = #ID_temp crawly

execute if entity @s[type=minecraft:area_effect_cloud] run schedule function crawly:spawn/update_schedule 2t
