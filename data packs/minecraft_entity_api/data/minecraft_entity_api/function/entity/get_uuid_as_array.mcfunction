#
# minecraft_entity_api:entity/get_uuid_as_array
#
# Get the uuid as an array of an entity
#> Storage
#  @uuid (out): the uuid
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: uuid set from entity @s UUID
