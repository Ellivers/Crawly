# Called by crawly:entity
# Removes a Crawly entity

tp ~ 1000 ~

execute if entity @s[type=minecraft:area_effect_cloud] as @e[type=minecraft:shulker,tag=crawly,sort=nearest,limit=1] run function crawly:remove

kill @s
