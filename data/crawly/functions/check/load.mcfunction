# Called by crawly:main
# Commands to run for every player every tick

scoreboard players set #temp crawly 1
execute anchored eyes positioned ^ ^.2 ^.35 if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all run scoreboard players set #temp crawly 0
execute anchored eyes positioned ^ ^.2 ^.35 if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all if block ~ ~ ~ #crawly:crawl_same run scoreboard players set #temp crawly 1

execute if entity @s[x_rotation=25..60] anchored eyes positioned ^ ^.2 ^.35 unless block ~ ~ ~ #minecraft:slabs[type=top] unless block ~ ~ ~ #crawly:dont_crawl_under if blocks ~ ~.6 ~ ~ ~.6 ~ ~ ~ ~ all if block ^ ^-.2 ^.35 #crawly:crawl_through if block ~ ~-.7 ~ #crawly:crawl_through if score #temp crawly matches 1 unless entity @e[type=minecraft:shulker,tag=crawly,distance=...9] run function crawly:check/states
execute if entity @s[x_rotation=25..60] unless score #temp crawly matches 2 anchored eyes positioned ^ ^.2 ^.35 if block ~ ~ ~ #crawly:dont_crawl_under if block ^ ^-.2 ^.35 #crawly:has_roof if block ~ ~-.7 ~ #crawly:has_roof unless entity @e[type=minecraft:shulker,tag=crawly,distance=...9] run function crawly:check/roof_states

#execute if block ~ ~1 ~ lava unless block ~ ~-.1 ~ #crawly:crawl_through anchored eyes if block ^ ^ ^ #crawly:crawl_through positioned ^ ^ ^.1 positioned ~ ~1 ~ if block ~ ~.3 ~ lava unless entity @e[type=minecraft:shulker,tag=crawly,distance=...7] run function crawly:spawn/shulker
execute as @e[type=#crawly:crawly,tag=crawly.crawl_player,tag=!crawly.update,distance=..7] at @s run function crawly:entity/align
