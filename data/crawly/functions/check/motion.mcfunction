# Called by crawly:check/states and crawly:check/has_roof_states
# Checks motion

scoreboard players set #temp crawly 2
execute store result score #temp2 crawly run data get entity @s Motion[1] 100
execute if score #temp2 crawly matches -10.. run function crawly:spawn/both
