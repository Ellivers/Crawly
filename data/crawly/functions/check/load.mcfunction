# Called by crawly:main
# Commands to run for every player every tick

execute unless score @s crawly.id matches 1.. run function crawly:check/set_id

execute if score @s crawly matches 1.. if score #crawlEntities crawly matches 0 run scoreboard players set @s crawly 0
scoreboard players set #temp crawly 1
execute anchored eyes positioned ^ ^.32 ^.28 if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all run scoreboard players set #temp crawly 0
execute if score #temp crawly matches 0 anchored eyes if block ^ ^.32 ^.28 #crawly:crawl_same run scoreboard players set #temp crawly 1

execute if score #temp crawly matches 1 unless score @s crawly matches 1.. anchored eyes positioned ^ ^.32 ^.28 unless block ~ ~ ~ #minecraft:slabs[type=top] unless block ~ ~ ~ #crawly:dont_crawl_under if blocks ~ ~.6 ~ ~ ~.6 ~ ~ ~ ~ all if block ^ ^-.2 ^.35 #crawly:crawl_through if block ~ ~-.7 ~ #crawly:crawl_through run function crawly:check/states/main
execute unless score #temp crawly matches 2 unless score @s crawly matches 1.. anchored eyes positioned ^ ^.32 ^.28 if block ~ ~ ~ #crawly:dont_crawl_under if block ^ ^-.3 ^.35 #crawly:has_roof if block ~ ~-.8 ~ #crawly:has_roof run function crawly:check/states/roof
