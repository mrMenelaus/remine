function gui:core/component


data modify storage main initial set value []
function gui:core/state
data modify storage main itt set from storage main state.value
data modify storage main item set value {id: repeater, name: {text: "Add post"}}

data modify storage main post set value {name: "React is here!", description: "Introducing gui 2.0"}
execute store result storage main post.key int 1 run time query gametime
data modify storage main dispatch set from storage main state
data modify storage main dispatch.value append from storage main post
execute if function gui:core/get/click run function gui:core/dispatch

function gui:core/component

function gui:core/map
function gui:components/loop/recursive
function gui:core/map