function gui:core/tree/new/get
execute unless function gui:core/v2/state/old run function gui:core/v2/state/new
data modify storage main this.states append from storage main state
function gui:core/tree/new/set