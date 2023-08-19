# Called by crawly:check/load

function crawly:check/entity_exists
execute if score #temp crawly matches 1 run function crawly:check/roof_states/main
