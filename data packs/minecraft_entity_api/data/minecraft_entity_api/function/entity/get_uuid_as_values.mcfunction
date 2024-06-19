#
# minecraft_entity_api:entity/get_uuid_as_values
#
# Get the uuid as four 32 bits values of an entity
#> Scores
#  @uuid_0 (out): 32bit partial value
#  @uuid_1 (out): 32bit partial value
#  @uuid_2 (out): 32bit partial value
#  @uuid_3 (out): 32bit partial value
#> Context
#  @executor (in): the entity
#> Return void

execute store result score ::out uuid_0 run data get entity @s UUID[0] 1.0
execute store result score ::out uuid_1 run data get entity @s UUID[1] 1.0
execute store result score ::out uuid_2 run data get entity @s UUID[2] 1.0
execute store result score ::out uuid_3 run data get entity @s UUID[3] 1.0
