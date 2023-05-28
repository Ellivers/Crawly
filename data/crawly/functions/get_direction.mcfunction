# Called by crawly:check/states and crawly:check/roof_states
# Gets the direction the player is facing

# north, south, east, west

execute if entity @s[y_rotation=-34..34] run scoreboard players set #direction crawly 1
execute if entity @s[y_rotation=-134..134] run scoreboard players set #direction crawly 2
execute if entity @s[y_rotation=-135..-35] run scoreboard players set #direction crawly 3
execute if entity @s[y_rotation=35..135] run scoreboard players set #direction crawly 4
