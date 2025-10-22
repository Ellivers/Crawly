# Called by crawly:main
# Commands to run for every player every tick

execute unless score @s crawly.id matches 1.. run function crawly:check/set_id

execute if score @s crawly matches 1.. if score #crawlEntities crawly matches 0 run scoreboard players set @s crawly 0
execute positioned ~ ~1.7 ~ align y positioned ~ ~.7 ~ if entity @s[dx=0] run return 0
execute positioned ~ ~.65 ~ unless entity @s[dx=0] run return 0
execute anchored eyes positioned ^ ^.32 ^.2 if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all unless block ~ ~ ~ #crawly:crawl_same run return 0

scoreboard players set #temp crawly 0
execute unless score @s crawly matches 1.. anchored eyes positioned ^ ^.32 ^.28 unless block ~ ~ ~ #minecraft:slabs[type=top] unless block ~ ~ ~ #crawly:dont_crawl_under if blocks ~ ~.45 ~ ~ ~.45 ~ ~ ~ ~ all if block ^ ^-.2 ^.35 #crawly:crawl_through if block ~ ~-.7 ~ #crawly:crawl_through run function crawly:check/states/load
execute unless score #temp crawly matches 2 unless score @s crawly matches 1.. anchored eyes positioned ^ ^.32 ^.28 if block ^ ^-.3 ^.35 #crawly:has_roof if block ~ ~-.8 ~ #crawly:has_roof run function crawly:check/states/roof
