scoreboard players set #compare main 0
execute store result score #compare main run data modify storage main _temp[-1].key set from storage main key
execute if score #compare main matches 0 run return run function gui:core/enc/map/extract/success
data remove storage main _temp[-1]
execute if data storage main _temp[0] run function gui:core/enc/map/extract/loop