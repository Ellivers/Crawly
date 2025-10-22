# Called by crawly:spawn/spawn
# Teleports the entity to where it should be

execute align y run tp ^ ^-.3 ^.23
execute at @s if block ~ ~.4 ~ #crawly:crawl_same_higher run tp ^ ^.2 ^

# Adjust slightly based on player rotation
execute at @s rotated as @p[tag=crawly.temp] run tp ^ ^-.15 ^-.07

# Make sure the shulker head doesn't stick out
execute at @s if block ~.1 ~.5 ~ #crawly:dont_crawl_under run tp ~-.11 ~ ~
execute at @s if block ~ ~.5 ~.1 #crawly:dont_crawl_under run tp ~ ~ ~-.11
execute at @s if block ~-.1 ~.5 ~ #crawly:dont_crawl_under run tp ~.11 ~ ~
execute at @s if block ~ ~.5 ~-.1 #crawly:dont_crawl_under run tp ~ ~ ~.11
tag @s remove crawly.placing

function crawly:spawn/rotate

scoreboard players operation @s crawly.id = #ID_temp crawly

execute if entity @s[type=minecraft:area_effect_cloud] run schedule function crawly:spawn/update_schedule 2t
