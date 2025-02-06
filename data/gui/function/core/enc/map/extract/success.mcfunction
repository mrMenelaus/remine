data modify storage main meta set from storage main _temp[-1]
tellraw @a {"text" :"Extracted list state", color: "white", bold: true, extra: [{nbt:"meta",storage:"main"}]}