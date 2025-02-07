execute if block ~ ~ ~ barrel[open=false] run return run execute if score @s main matches 1 run function gui:core/close
scoreboard players set @s main 1


execute store result score #changed main run data modify entity @s data.compare set from block ~ ~ ~ Items
execute if score #changed main matches 0 run return fail

clear @a *[custom_data~{null: true}]

# scoreboard players set #flow main 0
scoreboard players set #itterator main 0
# data modify storage main new_stack set value []
# data modify storage main layout set value []
# data modify storage main stack set from entity @s data.stack

function gui:core/tree/new/init
tellraw @a {nbt: "stack", storage:"main"}


function gui:core/v2/components/app

function gui:core/tree/new/get
function gui:core/tree/new/save
tellraw @a {nbt: "this", storage:"main"}


# data modify storage main layout[].components."minecraft:custom_data".null set value true

data modify block ~ ~ ~ Items set value []
# data modify block ~ ~ ~ Items set from storage main layout

# data modify entity @s data.stack set from storage main new_stack
# data modify entity @s data.compare set from block ~ ~ ~ Items
# data modify entity @s Tags set value ["gui"]