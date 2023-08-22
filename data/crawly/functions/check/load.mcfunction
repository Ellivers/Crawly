# Called by crawly:main
# Commands to run for every player every tick

execute unless score @s crawly.id matches 1.. run function crawly:check/set_id

scoreboard players set #temp crawly 1
execute anchored eyes positioned ^ ^.2 ^.35 if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all run scoreboard players set #temp crawly 0
execute anchored eyes positioned ^ ^.2 ^.35 if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all if block ~ ~ ~ #crawly:crawl_same run scoreboard players set #temp crawly 1

execute anchored eyes positioned ^ ^.2 ^.35 unless block ~ ~ ~ #minecraft:slabs[type=top] unless block ~ ~ ~ #crawly:dont_crawl_under if blocks ~ ~.6 ~ ~ ~.6 ~ ~ ~ ~ all if block ^ ^-.2 ^.35 #crawly:crawl_through if block ~ ~-.7 ~ #crawly:crawl_through if score #temp crawly matches 1 unless score @s crawly matches 1.. run function crawly:check/states/main
execute unless score #temp crawly matches 2 anchored eyes positioned ^ ^.2 ^.35 if block ~ ~ ~ #crawly:dont_crawl_under if block ^ ^-.2 ^.35 #crawly:has_roof if block ~ ~-.7 ~ #crawly:has_roof unless score @s crawly matches 1.. run function crawly:check/states/roof
