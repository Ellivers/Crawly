# Called by itself and by crawly:entity/check
# Removes a Crawly entity

scoreboard players operation #ID_temp crawly = @s crawly.id
execute if entity @s[type=minecraft:area_effect_cloud] as @a if score @s crawly.id = #ID_temp crawly run scoreboard players set @s crawly 0
execute if entity @s[type=minecraft:area_effect_cloud] run scoreboard players remove #crawlEntities crawly 1
execute on passengers run function crawly:entity/remove

tp ~ 1000 ~
kill @s
