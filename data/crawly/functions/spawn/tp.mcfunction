# Called by crawly:spawn/spawn
# Teleports the entity to where it should be

execute align xyz run tp ~.5 ~-.2 ~.5
execute at @s rotated as @p run tp ^ ^-.05 ^-.05
tag @s remove crawly.placing

execute if entity @s[type=minecraft:area_effect_cloud] run schedule function crawly:spawn/update 2t
