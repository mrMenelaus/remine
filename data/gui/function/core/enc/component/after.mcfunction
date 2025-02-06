scoreboard players set #component main 0
execute unless score #conditional main matches 1 unless score #map main matches 1 run data modify storage main new_stack append from storage main meta
execute if score #map main matches 1 run data modify storage main new_map append from storage main meta
# tellraw @a {nbt: "meta", storage:"main", extra:[{score:{name:"#status",objective:"main"}}]}

# scoreboard players set #conditional main 0
# execute if score #conditional main matches 1 run say conditional

function gui:core/enc/item/build
data modify storage main layout append from storage main built
