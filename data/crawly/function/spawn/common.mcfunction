# Called by crawly:spawn/spawn

tag @s add crawly.temp
scoreboard players set @s crawly 1
scoreboard players operation #ID_temp crawly = @s crawly.id
scoreboard players add #crawlEntities crawly 1
