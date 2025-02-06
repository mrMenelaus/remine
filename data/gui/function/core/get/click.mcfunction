# say clickcheck 1
execute if score #status main = #unmounted const run return fail
# say clickcheck 2
execute store result score #_before main if data entity @s Tags[]
data modify entity @s Tags append string storage main meta.id
execute store result score #_after main if data entity @s Tags[]
return run execute unless score #_before main = #_after main