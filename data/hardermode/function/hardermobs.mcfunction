# Gives all undead mobs leather caps if enabled
execute if score World Harder_Settings_MobsHaveSunscreen matches 1.. run item replace entity @e[type=#minecraft:undead,tag=!AppliedHarderMode] armor.head with minecraft:leather_helmet[custom_data={SunScreenHat:1b}]


# Zombies
execute as @e[type=zombie,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 26
execute as @e[type=zombie,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 50
execute as @e[type=zombie,tag=!AppliedHarderMode] run attribute @s minecraft:generic.movement_speed base set 0.28
execute as @e[type=zombie,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 6
execute as @e[type=zombie,tag=!AppliedHarderMode] run data merge entity @s {CanBreakDoors:1b,CanPickUpLoot:1b,Health:26f}
execute as @e[type=zombie,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Thristy Zombies
execute as @e[type=husk,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 28
execute as @e[type=husk,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 50
execute as @e[type=husk,tag=!AppliedHarderMode] run attribute @s minecraft:generic.movement_speed base set 0.28
execute as @e[type=husk,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 7
execute as @e[type=husk,tag=!AppliedHarderMode] run data merge entity @s {CanBreakDoors:1b,CanPickUpLoot:1b,Health:28f}
execute as @e[type=husk,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Drowned
execute as @e[type=drowned,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 30
execute as @e[type=drowned,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 28
execute as @e[type=drowned,tag=!AppliedHarderMode] run attribute @s minecraft:generic.movement_speed base set 0.32
execute as @e[type=drowned,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 7
execute as @e[type=drowned,tag=!AppliedHarderMode] run data merge entity @s {Health:30f}
execute as @e[type=drowned,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Larry :(
execute as @e[type=skeleton,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 24
execute as @e[type=skeleton,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 41
execute as @e[type=skeleton,tag=!AppliedHarderMode] run data merge entity @s {Health:24f}
execute as @e[type=skeleton,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Strays
execute as @e[type=stray,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 26
execute as @e[type=stray,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 45
execute as @e[type=stray,tag=!AppliedHarderMode] run data merge entity @s {Health:26f}
execute as @e[type=stray,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Spiders
execute as @e[type=spider,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 24
execute as @e[type=spider,tag=!AppliedHarderMode] run attribute @s minecraft:generic.movement_speed base set 0.32
execute as @e[type=spider,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 5
execute as @e[type=spider,tag=!AppliedHarderMode] run data merge entity @s {Health:24f}
execute as @e[type=spider,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Cave Spiders
execute as @e[type=cave_spider,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 32
execute as @e[type=cave_spider,tag=!AppliedHarderMode] run attribute @s minecraft:generic.movement_speed base set 0.35
execute as @e[type=cave_spider,tag=!AppliedHarderMode] run effect give @s jump_boost infinite 1 true
execute as @e[type=cave_spider,tag=!AppliedHarderMode] run data merge entity @s {Health:32f}
execute as @e[type=cave_spider,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Creepers
execute as @e[type=creeper,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 22
execute as @e[type=creeper,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 35
execute as @e[type=creeper,tag=!AppliedHarderMode] run data merge entity @s {Health:22f,Fuse:20}
execute as @e[type=creeper,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Enderhomies
execute as @e[type=enderman,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 128
execute as @e[type=enderman,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 45
execute as @e[type=enderman,tag=!AppliedHarderMode] run data merge entity @s {Health:45f}
execute as @e[type=enderman,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Witch Doctor
execute as @e[type=witch,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 30
execute as @e[type=witch,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 24
execute as @e[type=witch,tag=!AppliedHarderMode] run data merge entity @s {Health:30f}
execute as @e[type=witch,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Phantoms
execute as @e[type=phantom,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 25
execute as @e[type=phantom,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 4
execute as @e[type=phantom,tag=!AppliedHarderMode] run data merge entity @s {Health:25f,Size:2}
execute as @e[type=phantom,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Zombefied Pigmen
execute as @e[type=zombified_piglin,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 25
execute as @e[type=zombified_piglin,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 6
execute as @e[type=zombified_piglin,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 50
execute as @e[type=zombified_piglin,tag=!AppliedHarderMode] run data merge entity @s {Health:25f}
execute as @e[type=zombified_piglin,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode

# Killer Rabbit (very scary)
execute as @a store result score @s HarderMode_RandomNumber run random value 1..100000
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:plains run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:sunflower_plains run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:forest run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.1}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:flower_forest run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:birch_forest run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:old_growth_birch_forest run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:dark_forest run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}
execute as @a if score @s HarderMode_RandomNumber matches 1 if biome ~ ~ ~ minecraft:old_growth_pine_taiga run summon minecraft:rabbit ~-15 ~ ~2 {RabbitType:99,Attributes:[{Name:"generic.follow_range",Base:67},{Name:"generic.movement_speed",Base:0.5}]}

# Giant Zombie
execute as @a store result score @s HarderMode_RandomNumber run random value 1..100000
execute as @a if score @s HarderMode_RandomNumber matches 1 run summon zombie ~-100 ~ ~ {Tags:["Giant"],Angry:1b}
item replace entity @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] armor.head with minecraft:player_head[custom_name='{"text":"Zombie King","color":"gold","underlined":true,"bold":true,"italic":false}',lore=['{"text":"Custom Head ID: 11618","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile={id:[I;1122684591,-655602890,-1588126521,-287951236],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU1ODJlZDUxMmE4Y2VhOWIxN2ZmYzMxY2ExMmI4NmYyYWJjY2Y4M2E2MjJmYjdkMTViNWYxNzFmNTFiYjY0In19fQ=="}]}]
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run attribute @s minecraft:generic.scale base set 6.0
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run attribute @s minecraft:generic.max_health base set 200
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run attribute @s minecraft:generic.movement_speed base set 0.3
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run attribute @s minecraft:generic.attack_damage base set 15
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run attribute @s minecraft:generic.follow_range base set 128
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run data merge entity @s {Health:200f}
execute as @e[type=zombie,tag=Giant,tag=!AppliedHarderMode] run tag @s add AppliedHarderMode