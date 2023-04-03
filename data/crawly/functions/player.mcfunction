# Called by crawly:main
# Commands to run for every player every tick

execute if entity @s[x_rotation=25..60] anchored eyes positioned ^ ^.2 ^.35 unless block ~ ~ ~ #minecraft:slabs[type=top] unless block ~ ~ ~ #crawly:dont_crawl_under if blocks ~ ~.6 ~ ~ ~.6 ~ ~ ~ ~ all if block ^ ^-.2 ^.35 #crawly:crawl_through if block ~ ~-.7 ~ #crawly:crawl_through unless entity @e[type=minecraft:shulker,tag=crawly,distance=...9] run function crawly:spawn/both
#execute if block ~ ~1 ~ lava unless block ~ ~-.1 ~ #crawly:crawl_through anchored eyes if block ^ ^ ^ #crawly:crawl_through positioned ^ ^ ^.1 positioned ~ ~1 ~ if block ~ ~.3 ~ lava unless entity @e[type=minecraft:shulker,tag=crawly,distance=...7] run function crawly:spawn/shulker
execute as @e[type=#crawly:crawly,tag=crawly.crawl_player,tag=!crawly.update,distance=..7] at @s run function crawly:entity/align
