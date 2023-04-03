# Called by crawly:entity
# Removes a Crawly entity

tp ~ -1000 ~

execute if entity @s[type=minecraft:area_effect_cloud] run tp @e[type=minecraft:shulker,tag=crawly,sort=nearest,limit=1] ~ -1000 ~
