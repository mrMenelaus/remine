function gui:core/tree/new/get
data remove storage main this.old
data remove storage main stack[-1]
data modify storage main stack[-1].children append from storage main this
function gui:core/tree/new/get