function gui:core/component

data modify storage main initial set value false
function gui:core/state


data modify storage main item set value {id: redstone, name: {text:'Switch counter', color: white, italic: false}}


execute if data storage main state{value: true} run data modify storage main dispatch.value set value false
execute if data storage main state{value: false} run data modify storage main dispatch.value set value true
execute if function gui:core/get/click run function gui:core/dispatch

function gui:core/component


function gui:core/conditional
execute if data storage main state{value: true} run function gui:components/counter
function gui:core/conditional