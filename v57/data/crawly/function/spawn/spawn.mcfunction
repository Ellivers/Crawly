# Called by crawly:check/motion
# Spawns the entities needed to make the player crawl

function crawly:spawn/common

summon minecraft:area_effect_cloud ~ 250 ~ {Tags:["crawly.placing","crawly.crawl_player","crawly.tick","crawly.update","crawly","smithed.strict"],Passengers:[{id:"minecraft:shulker",Peek:0b,Color:12b,Tags:["crawly","smithed.strict"],Silent:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"crawly:empty",DeathTime:10s,active_effects:[{id:"minecraft:invisibility", duration:-1, amplifier:0b, show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.2}]}],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Radius:0f}

execute at @s run summon minecraft:interaction ~ ~ ~ {Tags:["crawly.prevent_interaction","crawly.tick","crawly","smithed.strict"],width:1f,height:1.8f,Passengers:[{id:"minecraft:area_effect_cloud",Age:0,Duration:10,WaitTime:0,Radius:0f}]}

scoreboard players operation #ID_temp crawly = @s crawly.id

execute at @s run scoreboard players operation @e[type=minecraft:interaction,tag=crawly.prevent_interaction,sort=nearest,limit=1] crawly.id = #ID_temp crawly
execute rotated ~ 0 as @e[type=minecraft:area_effect_cloud,tag=crawly.placing] run function crawly:spawn/tp

tag @s remove crawly.temp
