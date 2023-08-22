# Called by crawly:check/motion
# Spawns the entities needed to make the player crawl

function crawly:spawn/common

summon minecraft:area_effect_cloud ~ 250 ~ {Tags:["crawly.placing","crawly.crawl_player","crawly.update","crawly"],Passengers:[{id:"minecraft:shulker",Peek:0b,Color:12b,Tags:["crawly"],Silent:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",DeathTime:10s,ActiveEffects:[{Id:14, Duration:2147483647, Amplifier:0b, ShowParticles:0b}]}],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

execute as @e[type=minecraft:area_effect_cloud,tag=crawly.placing] run function crawly:spawn/tp

tag @s remove crawly.temp
