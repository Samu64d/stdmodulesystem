#
# context:get_dimension/on_entity
#

# Get dimension
data modify storage io: dimension set from entity @s Brain.memories.minecraft:home.value.dimension

# Delete entity
function minecraft_entity_api:entity/delete
