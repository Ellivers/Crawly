# Called by #minecraft:tick

execute as @a[x_rotation=25..60] at @s run function crawly:check/load
execute as @e[type=#crawly:crawly,tag=crawly.crawl_player,tag=!crawly.update] at @s run function crawly:entity/align
