scoreboard objectives add main dummy
scoreboard objectives add const dummy

scoreboard players set #mounted const 1
scoreboard players set #unmounted const 0

forceload add 0 0
setblock 0 -63 0 oak_sign
execute unless entity b13258f2-2a5d-4a72-8855-84f8e360d15b run summon text_display 0 -64 0 {UUID:[I;-1322100494,710756978,-2007661320,-480194213],alignment:"center"}


scoreboard players set #3 const 3
say loaded