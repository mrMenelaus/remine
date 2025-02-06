scoreboard players set #component main 1

execute unless score #conditional main matches 1 unless score #map main matches 1 run function gui:core/enc/stack/meta
execute if score #map main matches 1 run function gui:core/enc/map/extract/start

data modify storage main states set value []
data modify storage main states set from storage main meta.states

execute store result score #status main if data storage main meta.id
execute store result storage main meta.id int 1 run scoreboard players add #itterator main 1