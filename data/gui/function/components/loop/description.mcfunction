function gui:core/component


data modify storage main initial set from storage main props
function gui:core/state
data modify storage main post set from storage main state.value

data modify storage main initial set value 0
function gui:core/state
execute store result score #count main run data get storage main state.value


data modify storage main item set value {id: paper, name: {nbt: "post.name", storage: "main"}, lore: [{nbt: "post.description", storage:"main", color: white, italic: false}, {score: {name: "#count", objective: "main"},color: white, italic: false}]}

data modify storage main dispatch set from storage main state
execute store result storage main dispatch.value int 1 run scoreboard players add #count main 1
scoreboard players remove #count main 1
execute if function gui:core/get/click run function gui:core/dispatch

function gui:core/component