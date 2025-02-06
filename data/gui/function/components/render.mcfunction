function gui:core/component

data modify storage main initial set value 0
function gui:core/state
execute store result score #state main run data get storage main state.value

execute if score #state main matches 0 run data modify storage main item set value {id: netherite_pickaxe, name: {score: {name: "#state", objective: "main"}, extra: [{text:" рендеров"}]}}
execute if score #state main matches 1 run data modify storage main item set value {id: stick, name: {score: {name: "#state", objective: "main"}, extra: [{text:" рендеров"}]}}
execute if score #state main matches 2 run data modify storage main item set value {id: barrier, name: {score: {name: "#state", objective: "main"}, extra: [{text:" рендеров"}]}}

data modify storage main dispatch set from storage main state
scoreboard players add #state main 1
execute store result storage main dispatch.value int 1 run scoreboard players operation #state main %= #3 const
function gui:core/dispatch

execute if score #state main matches 0 run give @p diamond

function gui:core/component



