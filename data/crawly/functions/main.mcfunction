# Called by #minecraft:tick

execute as @a[x_rotation=25..60] at @s run function crawly:check/load
execute if score #crawlEntities crawly matches 1.. as @e[type=#crawly:crawly,tag=crawly.tick,tag=!crawly.update] at @s run function crawly:entity/align
