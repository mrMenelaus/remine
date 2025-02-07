execute unless data storage main stack[-1][0] run return fail
data modify storage main props set from storage main stack[-1][0]
data modify storage main key set from storage main props.key
function gui:components/counter
data remove storage main stack[-1][0]
return run function gui:components/loop/recursive