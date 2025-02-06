function gui:core/component

data modify storage main initial set value 0
function gui:core/state
execute store result score #count main run data get storage main state.value

data modify storage main item set from storage main props
data modify storage main item.name set value {text: "Куплено ", extra: [{score: {name: "#count", objective: "main"}, extra: [{text: " раз"}]}]}

data modify storage main dispatch set from storage main state
execute store result storage main dispatch.value int 1 run scoreboard players add #count main 1
scoreboard players remove #count main 1
execute if function gui:core/get/click run function gui:core/dispatch
execute if function gui:core/get/click run give @p rabbit

function gui:core/component



