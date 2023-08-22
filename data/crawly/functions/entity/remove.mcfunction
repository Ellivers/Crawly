# Called by itself and by crawly:entity/check
# Removes a Crawly entity

scoreboard players operation #ID_temp crawly = @s crawly.id
execute as @a if score @s crawly.id = #ID_temp crawly run scoreboard players set @s crawly 0
execute if entity @s[type=minecraft:area_effect_cloud] on passengers run function crawly:entity/remove
execute if entity @s[type=minecraft:shulker] run scoreboard players remove #crawlEntities crawly 1

tp ~ 1000 ~
kill @s
