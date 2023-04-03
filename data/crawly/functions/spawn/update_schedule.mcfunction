# Scheduled by crawly:spawn/tp
# Air toggle updating, to fix some jank area effect cloud stuff

execute as @e[type=minecraft:area_effect_cloud,tag=crawly,tag=crawly.update] run function crawly:spawn/update
