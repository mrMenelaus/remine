function gui:core/tree/new/get
data remove storage main stack[-1].old.children[0]

data modify storage main stack append value {}
data modify storage main stack[-1].old set from storage main this.old.children[0]
execute if data storage main stack[-1].old.id run data modify storage main stack[-1].mounted set value true
execute store result storage main stack[-1].id int 1 run scoreboard players add #itterator main 1
data modify storage main stack[-1] merge from storage main specific
data remove storage main specific
function gui:core/tree/new/get
