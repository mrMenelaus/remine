
data modify storage main state set value {}
data modify storage main state set from storage main states[0]
data remove storage main states[0]
# execute if score #conditional main matches 1 run say §astate in conditional component catched
execute if data storage main state.id run return 1

# execute if score #conditional main matches 1 run say §cstate in conditional component isn't catched
# run tellraw @a {text:"State catched ", extra:[{nbt: "meta.id", storage:"main"}]}
# execute unless score #conditional main matches 1 run say state in static component isn't catched

# tellraw @a {text:"State created ", extra:[{nbt: "meta.id", storage:"main"}]}

data modify storage main state.id set value 1
data modify storage main state.value set from storage main initial

data modify storage main meta.states append from storage main state