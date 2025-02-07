function gui:core/v2/component/start

tellraw @a {nbt: "this", storage:"main", color:red}


data modify storage main initial set value "dark"
function gui:core/v2/state
data get storage main state.value
tellraw @a {text: "State 1: ", color:red, extra:[{nbt: "state.value", storage:"main"}]}

data modify storage main initial set value {jwt: {name: Menelaus, sub: 1, role: "developer"}}
function gui:core/v2/state
data get storage main state.value
tellraw @a {text: "State 2: ", color:red, extra:[{nbt: "state.value", storage:"main"}]}



function gui:core/v2/conditional/start
function gui:core/v2/components/deep
function gui:core/v2/conditional/end

function gui:core/v2/components/counter
function gui:core/v2/components/counter
function gui:core/v2/components/counter

function gui:core/v2/component/end