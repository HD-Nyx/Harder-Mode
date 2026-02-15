execute if entity @a[advancements={minecraft:story/enter_the_nether=true}] if score World HarderModeWorld matches 0 run function hardermode:introduction

execute if score World HarderModeWorld matches 1 as @e[type=#minecraft:undead,tag=!AppliedHarderMode] run function hardermode:hardermobs
execute if score World HarderModeWorld matches 1 as @e[type=spider,tag=!AppliedHarderMode] run function hardermode:hardermobs
execute if score World HarderModeWorld matches 1 as @e[type=cave_spider,tag=!AppliedHarderMode] run function hardermode:hardermobs
execute if score World HarderModeWorld matches 1 as @e[type=creeper,tag=!AppliedHarderMode] run function hardermode:hardermobs
execute if score World HarderModeWorld matches 1 as @e[type=enderman,tag=!AppliedHarderMode] run function hardermode:hardermobs
execute if score World HarderModeWorld matches 1 as @e[type=witch,tag=!AppliedHarderMode] run function hardermode:hardermobs
execute if score World HarderModeWorld matches 1 as @e[type=phantom,tag=!AppliedHarderMode] run function hardermode:hardermobs

execute if score World HarderModeWorld matches 1 run function hardermode:mob_behaviors