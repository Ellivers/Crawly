# Scheduled by crawly:spawn/tp
# Air toggle updating, to fix some jank area effect cloud stuff

execute as @e[type=minecraft:area_effect_cloud,tag=crawly] run data modify entity @s Air set value 5s
