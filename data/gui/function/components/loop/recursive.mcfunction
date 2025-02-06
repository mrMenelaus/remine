execute unless data storage main itt[0] run return fail
data modify storage main props set from storage main itt[0]
data modify storage main key set from storage main props.key
function gui:components/loop/description

data remove storage main itt[0]
return run function gui:components/loop/recursive