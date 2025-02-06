data modify storage main meta set value {}
execute unless data storage main map[0] run return run data modify storage main meta.key set from storage main key 
# execute unless data storage main map[0] run tellraw @a {nbt:meta,storage:main}
data modify storage main _temp set from storage main map
function gui:core/enc/map/extract/loop
execute unless data storage main _temp[0] run data modify storage main meta.key set from storage main key 