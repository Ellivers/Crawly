# Called by crawly:player
# Spawns the entities needed to make the player crawl

summon minecraft:shulker ~ 250 ~ {Peek:0b,Color:12b,Tags:["crawly","crawly.crawl_player","crawly.placing"],Silent:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",DeathTime:100s,Health:.01f,active_effects:[{id:"minecraft:invisibility", duration:-1, amplifier:0b, show_particles:0b}]}
execute as @e[type=minecraft:shulker,tag=crawly.placing] run function crawly:spawn/tp
