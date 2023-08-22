# Called by crawly:entity/align

execute if entity @s[distance=...8] as @e[type=#crawly:crawly,tag=crawly.crawl_player] if score @s crawly.id = #ID_temp crawly run function crawly:entity/remove
execute unless entity @s[distance=...95] as @e[type=#crawly:crawly,tag=crawly.crawl_player] if score @s crawly.id = #ID_temp crawly run function crawly:entity/remove
