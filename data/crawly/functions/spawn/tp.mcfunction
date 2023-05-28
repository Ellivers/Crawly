# Called by crawly:spawn/both and crawly:spawn/shulker
# Teleports the entity to where it should be

scoreboard players set #align crawly 1
execute if score #direction crawly matches 1..2 unless block ~.3 ~ ~ #crawly:dont_crawl_under unless block ~-.3 ~ ~ #crawly:dont_crawl_under run scoreboard players set #align crawly 0
execute if score #direction crawly matches 3..4 unless block ~ ~ ~.3 #crawly:dont_crawl_under unless block ~ ~ ~-.3 #crawly:dont_crawl_under run scoreboard players set #align crawly 0

execute if score #direction crawly matches 1..2 if score #align crawly matches 0 align yz run tp ~ ~-.25 ~.5
execute if score #direction crawly matches 3..4 if score #align crawly matches 0 align xy run tp ~.5 ~-.25 ~
execute if score #align crawly matches 1 align xyz run tp ~.5 ~-.3 ~.5
execute at @s rotated as @p[tag=crawly.temp] run tp ^ ^-.15 ^-.07
tag @s remove crawly.placing
tag @p[tag=crawly.temp] remove crawly.temp

scoreboard players operation @s crawly = #direction crawly

execute if entity @s[type=minecraft:area_effect_cloud] run schedule function crawly:spawn/update_schedule 2t
