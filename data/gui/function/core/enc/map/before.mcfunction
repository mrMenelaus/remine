scoreboard players set #map main 1
scoreboard players operation #reflector main = #itterator main
function gui:core/enc/stack/meta
data modify storage main map set value []
data modify storage main map set from storage main meta.array
data modify storage main new_map set value []