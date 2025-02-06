scoreboard players set #conditional main 0
# say end conditional
# say §cstate nulled

execute if score #reflector main = #itterator main run return run data modify storage main new_stack append value {}
data modify storage main new_stack append from storage main meta
# say §astate saved
