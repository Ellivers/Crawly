# Called by crawly:entity/align

scoreboard players set #temp crawly 1
execute if entity @s[distance=...95] as @e[type=minecraft:area_effect_cloud,tag=crawly.crawl_player] if score @s crawly.id = #ID_temp crawly run function crawly:entity/remove
execute unless entity @s[distance=..1.095] as @e[type=minecraft:area_effect_cloud,tag=crawly.crawl_player] if score @s crawly.id = #ID_temp crawly run function crawly:entity/remove
