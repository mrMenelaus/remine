function gui:core/v2/component/start
data modify storage main initial set value 0
function gui:core/v2/state
data get storage main state.value

execute unless data storage main this.mounted run say mount
function gui:core/v2/component/end