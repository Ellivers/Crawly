# Called by crawly:entity/align

execute unless block ~ ~1 ~ lava if entity @a[distance=...8] run function crawly:remove
execute unless block ~ ~1 ~ lava unless entity @a[distance=...9] run function crawly:remove
#execute if block ~ ~1 ~ lava unless entity @a[distance=..1.65] run function crawly:remove
