# Called by crawly:player
# Commands to run tickly for nearby Crawly entities

execute unless block ~ ~ ~ lava align xyz positioned ~.5 ~ ~.5 if entity @a[distance=...8] run function crawly:remove
execute unless block ~ ~ ~ lava align xyz positioned ~.5 ~ ~.5 unless entity @a[distance=...9] run function crawly:remove
#execute if block ~ ~ ~ lava unless entity @a[distance=..1.65] run function crawly:remove
