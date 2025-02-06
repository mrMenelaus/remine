tellraw @a {nbt:"meta", storage:"main"}
say dispatched
execute if score #status main = #unmounted const run return fail
data modify storage main meta.states[-1].value set from storage main dispatch.value
