data modify storage main input set from storage main test[0]
function gui:core/get/name
data modify storage main temp append from storage main output
data remove storage main test[0]
execute if data storage main test[0] run function gui:core/get/enc/lore