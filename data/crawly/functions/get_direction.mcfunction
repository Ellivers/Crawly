# Called by crawly:check/entity_exists
# Gets the direction the player is facing

# north = 1, south = 2, east = 3, west = 4

execute if entity @s[y_rotation=-180..-134] run scoreboard players set #direction crawly 1
execute if entity @s[y_rotation=134..180] run scoreboard players set #direction crawly 1
execute if entity @s[y_rotation=-34..34] run scoreboard players set #direction crawly 2
execute if entity @s[y_rotation=-135..-35] run scoreboard players set #direction crawly 3
execute if entity @s[y_rotation=35..133] run scoreboard players set #direction crawly 4
