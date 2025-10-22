# Called by crawly:check/states/load
# Checks for block state exceptions

scoreboard players set #temp crawly 1

execute if block ~ ~ ~ #crawly:groups/pane_likes if block ~ ~-.7 ~ #crawly:groups/pane_likes run return 0
execute if block ~ ~ ~ #crawly:groups/lanterns if block ~ ~-.7 ~ #crawly:groups/lanterns run return 0
execute if block ~ ~ ~ minecraft:bell if block ~ ~-.7 ~ minecraft:bell run return 0
execute if block ~ ~ ~ minecraft:chest if block ~ ~-.7 ~ minecraft:chest run return 0
execute if block ~ ~ ~ minecraft:trapped_chest if block ~ ~-.7 ~ minecraft:trapped_chest run return 0
execute if block ~ ~ ~ minecraft:ender_chest if block ~ ~-.7 ~ minecraft:ender_chest run return 0
execute if block ~ ~ ~ #minecraft:fences if block ~ ~-.7 ~ #minecraft:fences run return 0
execute if block ~ ~ ~ #minecraft:walls if block ~ ~-.7 ~ #minecraft:walls run return 0
execute if block ~ ~ ~ minecraft:decorated_pot if block ~ ~-.7 ~ minecraft:decorated_pot run return 0

execute if block ~ ~ ~ minecraft:cake if block ~ ~-.7 ~ minecraft:cake run function crawly:check/special/cake
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 1 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=south] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 2 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=north] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 3 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=west] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 4 unless block ~ ~ ~ minecraft:grindstone[face=wall,facing=east] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 1 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=north] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 2 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=south] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 3 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=east] run return 0
execute if block ~ ~ ~ minecraft:grindstone if block ~ ~-.7 ~ minecraft:grindstone if score #direction crawly matches 4 if block ~ ~-.7 ~ minecraft:grindstone[face=wall,facing=west] run return 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if block ~ ~-.7 ~ minecraft:pointed_dripstone[vertical_direction=up] run return 0
execute if block ~ ~-.7 ~ #minecraft:doors if block ~ ~ ~ #minecraft:doors[half=upper] run return 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=east] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=west] run return 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=east] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=west] run return 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=north] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=south] run return 0
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=north] unless block ~ ~-.7 ~ #minecraft:fence_gates[facing=south] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~ ~ #minecraft:fence_gates[facing=north] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~ ~ #minecraft:fence_gates[facing=south] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~ ~ #minecraft:fence_gates[facing=east] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~ ~ #minecraft:fence_gates[facing=west] if block ~ ~-.7 ~ #minecraft:fence_gates unless block ~ ~-.7 ~ #minecraft:fence_gates[open=true] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #minecraft:fence_gates[facing=east,open=false] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #minecraft:fence_gates[facing=west,open=false] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #minecraft:fence_gates[facing=north,open=false] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #minecraft:fence_gates[facing=south,open=false] run return 0
execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #minecraft:trapdoors[facing=north,open=true] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #minecraft:trapdoors[facing=south,open=true] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #minecraft:trapdoors[facing=east,open=true] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #minecraft:trapdoors[facing=west,open=true] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north,open=true] if block ~ ~-.7 ~ #minecraft:trapdoors[facing=north,open=true] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south,open=true] if block ~ ~-.7 ~ #minecraft:trapdoors[facing=south,open=true] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] if block ~ ~-.7 ~ #minecraft:trapdoors[facing=east,open=true] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west,open=true] if block ~ ~-.7 ~ #minecraft:trapdoors[facing=west,open=true] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #crawly:groups/rods[facing=up] if block ~ ~ ~ #crawly:groups/rods unless block ~ ~ ~ #crawly:groups/rods[facing=north] unless block ~ ~ ~ #crawly:groups/rods[facing=south] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #crawly:groups/rods[facing=down] if block ~ ~ ~ #crawly:groups/rods unless block ~ ~ ~ #crawly:groups/rods[facing=north] unless block ~ ~ ~ #crawly:groups/rods[facing=south] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #crawly:groups/rods[facing=up] if block ~ ~ ~ #crawly:groups/rods unless block ~ ~ ~ #crawly:groups/rods[facing=east] unless block ~ ~ ~ #crawly:groups/rods[facing=west] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #crawly:groups/rods[facing=down] if block ~ ~ ~ #crawly:groups/rods unless block ~ ~ ~ #crawly:groups/rods[facing=east] unless block ~ ~ ~ #crawly:groups/rods[facing=west] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #crawly:groups/rods[facing=north] unless block ~ ~ ~ #crawly:groups/rods[facing=north] unless block ~ ~ ~ #crawly:groups/rods[facing=south] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #crawly:groups/rods[facing=south] unless block ~ ~ ~ #crawly:groups/rods[facing=north] unless block ~ ~ ~ #crawly:groups/rods[facing=south] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #crawly:groups/rods[facing=east] unless block ~ ~ ~ #crawly:groups/rods[facing=east] unless block ~ ~ ~ #crawly:groups/rods[facing=west] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #crawly:groups/rods[facing=west] unless block ~ ~ ~ #crawly:groups/rods[facing=east] unless block ~ ~ ~ #crawly:groups/rods[facing=west] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #crawly:groups/chains[axis=y] if block ~ ~ ~ #crawly:groups/chains unless block ~ ~ ~ #crawly:groups/chains[axis=z] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #crawly:groups/chains[axis=y] if block ~ ~ ~ #crawly:groups/chains unless block ~ ~ ~ #crawly:groups/chains[axis=x] run return 0
execute if score #direction crawly matches 1..2 if block ~ ~-.7 ~ #crawly:groups/chains[axis=z] unless block ~ ~ ~ #crawly:groups/chains[axis=z] run return 0
execute if score #direction crawly matches 3..4 if block ~ ~-.7 ~ #crawly:groups/chains[axis=x] unless block ~ ~ ~ #crawly:groups/chains[axis=x] run return 0
execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #crawly:groups/wall_heads[facing=north] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #crawly:groups/wall_heads[facing=south] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #crawly:groups/wall_heads[facing=east] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #crawly:groups/wall_heads[facing=west] run return 0
execute if score #direction crawly matches 1 if block ~ ~-.7 ~ minecraft:piston_head[facing=south] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ minecraft:piston_head[facing=north] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ minecraft:piston_head[facing=west] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ minecraft:piston_head[facing=east] run return 0
execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #crawly:groups/amethyst_growths[facing=north] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #crawly:groups/amethyst_growths[facing=south] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #crawly:groups/amethyst_growths[facing=east] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #crawly:groups/amethyst_growths[facing=west] run return 0
execute if block ~ ~ ~ #crawly:groups/amethyst_growths unless block ~ ~ ~ #crawly:groups/amethyst_growths[facing=up] if blocks ~ ~ ~ ~ ~ ~ ~ ~-.7 ~ all run return 0
execute if block ~ ~-.7 ~ minecraft:snow unless block ~ ~-.7 ~ minecraft:snow[layers=1] unless block ~ ~-.7 ~ minecraft:snow[layers=2] unless block ~ ~-.7 ~ minecraft:snow[layers=3] unless block ~ ~-.7 ~ minecraft:snow[layers=4] run return 0

execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #minecraft:doors[facing=north,open=false] run return 0
execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #minecraft:doors[facing=east,hinge=right,open=true] run return 0
execute if score #direction crawly matches 1 if block ~ ~-.7 ~ #minecraft:doors[facing=west,hinge=left,open=true] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #minecraft:doors[facing=south,open=false] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #minecraft:doors[facing=east,hinge=left,open=true] run return 0
execute if score #direction crawly matches 2 if block ~ ~-.7 ~ #minecraft:doors[facing=west,hinge=right,open=true] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #minecraft:doors[facing=east,open=false] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #minecraft:doors[facing=south,hinge=right,open=true] run return 0
execute if score #direction crawly matches 3 if block ~ ~-.7 ~ #minecraft:doors[facing=north,hinge=left,open=true] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #minecraft:doors[facing=west,open=false] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #minecraft:doors[facing=north,hinge=right,open=true] run return 0
execute if score #direction crawly matches 4 if block ~ ~-.7 ~ #minecraft:doors[facing=south,hinge=left,open=true] run return 0

function #crawly:check_states

return run scoreboard players get #temp crawly
