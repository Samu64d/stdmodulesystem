#
# minecraft_entity_api:entity/get_uuid_as_string
#
# Get the uuid as a string of an entity
#> Storage
#  @uuid (out): the uuid
#> Context
#  @executor (in): the entity
#> Return void

# Get uuid as array
function minecraft_entity_api:entity/get_uuid_as_array

# Convert to string
function uuid:array_to_string
