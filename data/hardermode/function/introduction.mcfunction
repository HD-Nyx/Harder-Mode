difficulty hard
gamerule universalAnger true
gamerule mobGriefing true
gamerule forgiveDeadPlayers false


scoreboard players set World HarderModeWorld 1

title @a title {"text":"HARDER MODE","color":"dark_red","bold":true}
title @a subtitle {"text":"The world has become hostile","color":"red"}

tellraw @a [{"text":"","color":"dark_red"},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_red","bold":true}]
tellraw @a [{"text":"        ","color":"dark_red"},{"text":"⚠ HARDER MODE ACTIVATED ⚠","color":"red","bold":true}]
tellraw @a [{"text":"","color":"dark_red"}]
tellraw @a [{"text":"  The mobs have become harder, better, faster and","color":"gray"}]
tellraw @a [{"text":"  more stronger.","color":"gray"}]
tellraw @a [{"text":"","color":"dark_red"}]
tellraw @a [{"text":"","color":"dark_red"}]
tellraw @a [{"text":"        Good luck. You'll need it.","color":"dark_gray","italic":true}]
tellraw @a [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_red","bold":true}]

playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.5 1.2
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.3 0.5

execute as @a at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0.1 50 force @a
execute as @a at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 1 0.5 0.05 30 force @a
effect give @a blindness 3 0
effect give @a slowness 3 2