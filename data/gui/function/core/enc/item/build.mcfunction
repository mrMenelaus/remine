data modify storage main _temp set value {}
data modify storage main _temp.id set from storage main item.id
data modify storage main _temp.count set from storage main item.count

execute if data storage main item.name run function gui:core/enc/item/set/name
execute if data storage main item.lore run function gui:core/enc/item/set/lore

data modify storage main _temp.components."minecraft:custom_data".id set from storage main meta.id
execute store result storage main _temp.Slot byte 1 run scoreboard players get #flow main
scoreboard players add #flow main 1

data modify storage main built set from storage main _temp
