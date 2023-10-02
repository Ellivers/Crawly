# Called by crawly:check/states/main and crawly:check/states/roof
# Checks neighbouring blocks and motion

execute if score #direction crawly matches 1..2 unless block ~.3 ~-.7 ~ #crawly:crawl_through run return 0
execute if score #direction crawly matches 1..2 unless block ~-.3 ~-.7 ~ #crawly:crawl_through run return 0
execute if score #direction crawly matches 3..4 unless block ~ ~-.7 ~.3 #crawly:crawl_through run return 0
execute if score #direction crawly matches 3..4 unless block ~ ~-.7 ~-.3 #crawly:crawl_through run return 0

scoreboard players set #temp crawly 2
execute store result score #temp2 crawly run data get entity @s Motion[1] 100
execute if score #temp2 crawly matches -10.. run function crawly:spawn/spawn
