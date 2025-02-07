execute at @e[type=marker, tag=gui] if block ~ ~ ~ barrel run setblock ~ ~ ~ air
kill @e[type=marker, tag=gui]
summon marker ~ ~ ~ {Tags: ["gui"]}
setblock ~ ~ ~ barrel