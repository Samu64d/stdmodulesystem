#
# uuid:generate_array
#
# Generate a 128 bit length uuid slitted on a 32 bit word array
#> Storage
#  @uuid (out): the uuid
#> Return void

# Create object
data modify storage io: uuid set value [I; 0, 0, 0, 0]

# Create entity
data modify storage io: type set value "minecraft:marker"
data modify storage io: callback set value "uuid:generate_array/on_executor"
function minecraft_entity_api:entity/new_transient
