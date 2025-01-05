#
# minecraft_entity_api:entity/is_in_dimension
#
# Check if an entity is in a dimension
#> Storage
#  @dimension (in): the dimension
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: dimension"
function stdmodulesystem:stack/push

# Get entity dimension
function minecraft_entity_api:entity/get_dimension
data modify storage minecraft_entity_api:volatile entity.temp_dimension set from storage io: dimension

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: dimension"
function stdmodulesystem:stack/pop

# Check for matching
return run data modify storage minecraft_entity_api:volatile entity.temp_dimension set from storage io: dimension
