# Called by crawly:check/load
# Sets the ID of a player that hasn't gotten an ID yet

scoreboard players add #ID crawly 1
scoreboard players operation @s crawly.id = #ID crawly
