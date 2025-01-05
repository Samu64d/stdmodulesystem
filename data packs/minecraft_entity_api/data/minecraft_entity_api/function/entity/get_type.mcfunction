#
# minecraft_entity_api:entity/get_type
#
# Get the entity type of an entity
#> Storage
#  @type (out): the entity type
#> Context
#  @executor (in): the entity
#> Return void

function minecraft_registries:providers/entity_type/get_name
data modify storage io: type set from storage io: name
