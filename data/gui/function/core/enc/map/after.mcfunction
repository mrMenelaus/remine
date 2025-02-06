scoreboard players set #map main 0
data modify storage main new_stack append value {}
# tellraw @a {nbt: "map", storage: "main"}
data modify storage main new_stack[-1].array set from storage main new_map