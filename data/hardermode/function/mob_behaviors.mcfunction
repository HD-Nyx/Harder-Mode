# Cave Spiders Behaviors
execute as @e[type=cave_spider] run effect give @s infested infinite
execute as @e[type=cave_spider] at @s if entity @a[distance=..3] run effect give @a[distance=..1] poison 1 1

# Creeper Behaviors
execute as @e[type=creeper,tag=!ChargedCheck] at @s store result score @s HarderMode_RandomNumber run random value 1..1000000
execute as @e[type=creeper,tag=!ChargedCheck] at @s if score @s HarderMode_RandomNumber matches ..5 run summon lightning_bolt ~ ~ ~
execute as @e[type=creeper,tag=!ChargedCheck] run tag @s add ChargedCheck

# Drowned Behaviors
execute as @e[type=drowned] at @s if block ~ ~ ~ water if entity @a[distance=..16] run effect give @s speed 2 2 true

# Enderman Behaviors
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[type=enderman,distance=..128,nbt={AngerTime:1}] run effect give @s darkness 5 0
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[type=enderman,distance=..128,nbt={AngerTime:1}] run title @s actionbar "STOP LOOKING AT ME"

# EndermanBehaviors (imagine trying to trap a enderman with a boat just for it to break lmao)
execute as @e[type=enderman] at @s run kill @e[type=boat,distance=..2,limit=1]

execute as @e[type=enderman] in minecraft:the_nether run item replace entity @s armor.head with player_head[custom_name='{"text":"Enderman From Hell"}',profile={id:[I;379601077, -1423456789, 2012345678, -987654321],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjgyYTUyZDg3NDY3NWY1ZjZlOTg3OWZjZWExMmMyZTFhOTM3ZTIwZjNkNjQ1ZjhiNmI2NGIyMWUxOTZiOSJ9fX0="}]}]
execute as @e[type=enderman] in minecraft:the_end run item replace entity @s armor.head with player_head[custom_name='{"text":"Enderman From Moon?"}',profile={id:[I;266830263, 336612021, -2147483648, 123456789],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRlYzdhNGRlMDdiN2VkZWFjZTliOWI5OTY2NDRlMjFkNThjYmRhYzM5MmViZWIyNDdhY2NkMTg1MzRiNTQifX19"}]}]
# Husk Behaviors
execute as @e[type=husk,tag=!AppliedHarderMode] run effect give @s fire_resistance infinite 0 true

# IronGolemBehaviors
execute as @e[type=iron_golem] at @s if entity @a[distance=..16] if data entity @s {AngerTime:1} run effect give @s speed 2 1 true

# Phantom Behaviors
execute as @e[type=phantom] at @s if entity @a[distance=..8] run effect give @a[distance=..8] weakness 5 0

# Skeleton Behaviors
execute as @e[type=skeleton,tag=!HasBow] at @s store result score @s HarderMode_RandomNumber run random value 1..100
execute as @e[type=skeleton,tag=!HasBow] at @s if score @s HarderMode_RandomNumber matches ..49 run item replace entity @s weapon.mainhand with bow[enchantments={levels:{"minecraft:power":1}}]
execute as @e[type=skeleton,tag=!HasBow] at @s if score @s HarderMode_RandomNumber matches 50..79 run item replace entity @s weapon.mainhand with bow[enchantments={levels:{"minecraft:power":2,"minecraft:flame":1}}]
execute as @e[type=skeleton,tag=!HasBow] at @s if score @s HarderMode_RandomNumber matches 80..89 run item replace entity @s weapon.mainhand with bow[enchantments={levels:{"minecraft:power":2,"minecraft:punch":1}}]
execute as @e[type=skeleton,tag=!HasBow] at @s if score @s HarderMode_RandomNumber matches 90..100 run item replace entity @s weapon.offhand with shield
execute as @e[type=skeleton,tag=!HasBow] at @s if score @s HarderMode_RandomNumber matches 90..100 run tag @s add Horsemen
execute as @e[type=skeleton,tag=!HasBow] run tag @s add HasBow

execute as @e[type=skeleton,tag=Horsemen,tag=!JockeyCheck] at @s run summon skeleton_horse ~ ~ ~ {Tame:1b,Passengers:[{id:"minecraft:skeleton",Tags:["SkeletonKingMounted","AppliedHarderMode","HasBow","Horsemen","JockeyCheck"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":2}}}},{id:"minecraft:shield",count:1}],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":'{"text":"Skeleton King","color":"gold","underlined":true,"bold":true,"italic":false}',"minecraft:lore":['{"text":"Custom Head ID: 114997","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile:{id:[I;-1321070734,367674073,-1448796689,-869724317],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGIwZTgxNTk2ODY1MzYxZDE3MjIxZjMxZTg5NzI0MmQyZWZlNjZiYWEyOWY2YzYwZTE1NDVmNmQ2ZTZlNGY2MiJ9fX0="}]}}}],Silent:1b}]}
execute as @e[type=skeleton,tag=Horsemen,tag=!JockeyCheck] run tp @s ~ -1000 ~

execute as @e[type=skeleton,nbt={HandItems:[{},{id:"minecraft:shield"}]}] run data merge entity @s {Silent:1b}

# Spider Behaviors
execute as @e[type=spider] at @s if entity @a[distance=..1] store result score @s HarderMode_RandomNumber run random value 1..10000
execute as @e[type=spider] at @s if score @s HarderMode_RandomNumber matches ..1 if block ~ ~ ~ air run setblock ~ ~ ~ cobweb
execute as @e[type=spider,tag=!JockeyCheck] at @s store result score @s HarderMode_RandomNumber run random value 1..10000
execute as @e[type=spider,tag=!JockeyCheck] at @s if score @s HarderMode_RandomNumber matches ..1 run summon cave_spider ~ ~ ~
execute as @e[type=cave_spider,sort=nearest,limit=1] at @s run ride @s mount @e[type=spider,sort=nearest,limit=1] 
execute as @e[type=spider,tag=!JockeyCheck] run tag @s add JockeyCheck

# Stray Behaviors
execute as @e[type=stray] at @s if block ~ ~-1 ~ water store result score @s HarderMode_RandomNumber run random value 1..100
execute as @e[type=stray] at @s if score @s HarderMode_RandomNumber matches ..30 if block ~ ~-1 ~ water run setblock ~ ~-1 ~ frosted_ice
execute as @e[type=stray] at @s if entity @a[distance=..6] run effect give @a[distance=..6] slowness 3 1

# Stray Behaviors
execute as @e[type=stray,tag=!HasBow] run item replace entity @s weapon.mainhand with bow[enchantments={levels:{"minecraft:power":2}}]
execute as @e[type=stray,tag=!HasBow] run tag @s add HasBow

# Witch Behaviors
execute as @e[type=witch] at @s run effect give @e[type=#hardermode:hardermode_hostile,distance=..10,type=!witch] strength 10 1
execute as @e[type=witch] at @s run effect give @e[type=#hardermode:hardermode_hostile,distance=..10,type=!witch] speed 10 1
execute as @e[type=witch] at @s run effect give @e[type=#hardermode:hardermode_hostile,distance=..10,type=!witch] resistance 10 1

execute as @e[type=witch,nbt={Health:1.0f}] run effect give @s invisibility 30 0
execute as @e[type=witch,nbt={Health:1.0f}] run effect give @s speed 30 2
execute as @e[type=witch,nbt={Health:1.0f}] run effect give @s regeneration 30 1

# Zombies
execute as @e[type=zombie,nbt={HurtTime:10s}] at @s store result score @s HarderMode_RandomNumber run random value 1..100
execute as @e[type=zombie,nbt={HurtTime:10s}] at @s if score @s HarderMode_RandomNumber matches ..5 run summon zombie ~3 ~ ~3 {Tags:["Reinforcement"]}
execute as @e[type=zombie,nbt={HurtTime:10s}] at @s if score @s HarderMode_RandomNumber matches ..5 run summon zombie ~-3 ~ ~-3 {Tags:["Reinforcement"]}
execute as @e[type=zombie,tag=Reinforcement] run effect give @s weakness 25 1 false

execute as @e[type=zombie,tag=!HasPickaxe] at @s store result score @s HarderMode_RandomNumber run random value 1..100
execute as @e[type=zombie,tag=!HasPickaxe] at @s if score @s HarderMode_RandomNumber matches ..89
execute as @e[type=zombie,tag=!HasPickaxe] at @s if score @s HarderMode_RandomNumber matches 90.. run item replace entity @s armor.head with player_head[custom_name='{"text":"Miner Skeleton"}',profile={id:[I;-14468168,-677543476,-1735298747,1397925891],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQ1MjVhNTE2YTg3YTMxNTdlMTE2MzlhZWJiYzRjMmRmMmRiMTFkNTNjZWQ3NjgxMzQ0MzA0NmVkM2U1YiJ9fX0="}]}]
execute as @e[type=zombie,tag=!HasPickaxe] at @s if score @s HarderMode_RandomNumber matches 90.. run item replace entity @s weapon.mainhand with iron_pickaxe
execute as @e[type=zombie,tag=!HasPickaxe] at @s if score @s HarderMode_RandomNumber matches 90.. run item replace entity @s weapon.offhand with torch
execute as @e[type=zombie,tag=!HasPickaxe] run tag @s add HasPickaxe

execute as @e[type=zombie,tag=HasPickaxe] at @s if block ^ ^1 ^1 cobblestone if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. run playsound minecraft:block.stone.break master @s ~ ~ ~ 1 1
execute as @e[type=zombie,tag=HasPickaxe] if items entity @s weapon.mainhand iron_pickaxe if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. at @s positioned ^ ^1 ^1 run fill ^ ^ ^ ^ ^-1 ^1 air replace cobblestone
execute as @e[type=zombie,tag=HasPickaxe] if items entity @s weapon.mainhand iron_pickaxe if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. at @s positioned ^ ^1 ^1 run fill ^ ^ ^ ^ ^-1 ^1 air replace cave_air

execute as @e[type=zombie,tag=HasPickaxe] at @s if block ^ ^1 ^1 cobbled_deepslate if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. run playsound minecraft:block.stone.break master @s ~ ~ ~ 1 1
execute as @e[type=zombie,tag=HasPickaxe] if items entity @s weapon.mainhand iron_pickaxe if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. at @s positioned ^ ^1 ^1 run fill ^ ^ ^ ^ ^-1 ^1 air replace cobbled_deepslate
execute as @e[type=zombie,tag=HasPickaxe] if items entity @s weapon.mainhand iron_pickaxe if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. at @s positioned ^ ^1 ^1 run fill ^ ^ ^ ^ ^-1 ^1 air replace cave_air

execute as @e[type=zombie,tag=HasPickaxe] at @s if block ^ ^1 ^1 netherrack if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. run playsound minecraft:block.stone.break master @s ~ ~ ~ 1 1
execute as @e[type=zombie,tag=HasPickaxe] if items entity @s weapon.mainhand iron_pickaxe if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. at @s positioned ^ ^1 ^1 run fill ^ ^ ^ ^ ^-1 ^1 air replace netherrack
execute as @e[type=zombie,tag=HasPickaxe] if items entity @s weapon.mainhand iron_pickaxe if score World Harder_Settings_MinerZombiesCanMineCobble matches 1.. at @s positioned ^ ^1 ^1 run fill ^ ^ ^ ^ ^-1 ^1 air replace cave_air
