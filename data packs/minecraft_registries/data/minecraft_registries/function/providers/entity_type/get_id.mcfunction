#
# minecraft_registries:providers/entity_type/get_id
#

scoreboard players set ::minecraft_registries id 0
execute if entity @s[type=#minecraft_registries:property/id/bit_1] run scoreboard players operation ::minecraft_registries id += ::const BIT_1
execute if entity @s[type=#minecraft_registries:property/id/bit_2] run scoreboard players operation ::minecraft_registries id += ::const BIT_2
execute if entity @s[type=#minecraft_registries:property/id/bit_3] run scoreboard players operation ::minecraft_registries id += ::const BIT_3
execute if entity @s[type=#minecraft_registries:property/id/bit_4] run scoreboard players operation ::minecraft_registries id += ::const BIT_4
execute if entity @s[type=#minecraft_registries:property/id/bit_5] run scoreboard players operation ::minecraft_registries id += ::const BIT_5
execute if entity @s[type=#minecraft_registries:property/id/bit_6] run scoreboard players operation ::minecraft_registries id += ::const BIT_6
execute if entity @s[type=#minecraft_registries:property/id/bit_7] run scoreboard players operation ::minecraft_registries id += ::const BIT_7
execute if entity @s[type=#minecraft_registries:property/id/bit_8] run scoreboard players operation ::minecraft_registries id += ::const BIT_8
execute if entity @s[type=#minecraft_registries:property/id/bit_9] run scoreboard players operation ::minecraft_registries id += ::const BIT_9
execute if entity @s[type=#minecraft_registries:property/id/bit_10] run scoreboard players operation ::minecraft_registries id += ::const BIT_10
execute if entity @s[type=#minecraft_registries:property/id/bit_11] run scoreboard players operation ::minecraft_registries id += ::const BIT_11
execute if entity @s[type=#minecraft_registries:property/id/bit_12] run scoreboard players operation ::minecraft_registries id += ::const BIT_12
execute if entity @s[type=#minecraft_registries:property/id/bit_13] run scoreboard players operation ::minecraft_registries id += ::const BIT_13
execute if entity @s[type=#minecraft_registries:property/id/bit_14] run scoreboard players operation ::minecraft_registries id += ::const BIT_14
execute if entity @s[type=#minecraft_registries:property/id/bit_15] run scoreboard players operation ::minecraft_registries id += ::const BIT_15
execute if entity @s[type=#minecraft_registries:property/id/bit_16] run scoreboard players operation ::minecraft_registries id += ::const BIT_16
return run scoreboard players get ::minecraft_registries id
