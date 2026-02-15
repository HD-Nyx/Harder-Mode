scoreboard objectives add HarderModeWorld dummy
execute unless score World HarderModeWorld matches 0.. run scoreboard players set World HarderModeWorld 0
scoreboard objectives add HarderMode_RandomNumber dummy

# Settings
scoreboard objectives add Harder_Settings_MobsHaveSunscreen dummy
scoreboard players set World Harder_Settings_MobsHaveSunscreen 1
scoreboard objectives add Harder_Settings_MinerZombiesCanMineCobble dummy
scoreboard players set World Harder_Settings_MinerZombiesCanMineCobble 1


tellraw @a [{"text":"[Harder Mode] ","color":"red","bold":true},{"text":"Datapack loaded successfully!","color":"white","bold":false}]
tellraw @a [{"text":"  • Sunscreen Mode: ","color":"gray"},{"score":{"name":"World","objective":"Harder_Settings_MobsHaveSunscreen"},"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set World Harder_Settings_MobsHaveSunscreen "}}]
tellraw @a [{"text":"  • Miner Zombies Can Mine: ","color":"gray"},{"score":{"name":"World","objective":"Harder_Settings_MinerZombiesCanMineCobble"},"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set World Harder_Settings_MinerZombiesCanMineCobble "}}]
tellraw @a [{"text":" ","color":"gray"}]
tellraw @a [{"text":"To edit any of these settings do:","color":"gray"}]
tellraw @a [{"text":"/scoreboard players set World or click the settings number","color":"gray"}]
