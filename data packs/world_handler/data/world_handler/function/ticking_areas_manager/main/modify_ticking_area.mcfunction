#
# world_handler:ticking_areas_manager/main/modify_ticking_area
#

# Get the old ticking area descriptor
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid
data modify storage world_handler:volatile ticking_areas_manager.old_ticking_area_descriptor set from storage io: ticking_area_descriptor

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/push

# Save data
scoreboard players operation ::world_handler::ticking_areas_manager new_size = ::in size
scoreboard players operation ::world_handler::ticking_areas_manager new_center_x = ::in center_x
scoreboard players operation ::world_handler::ticking_areas_manager new_center_z = ::in center_z
data modify storage world_handler:volatile ticking_areas_manager.temp_dimension set from storage io: dimension

# Create a new ticking area descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/new
data modify storage io: ticking_area_descriptor0 set from storage world_handler:volatile ticking_areas_manager.old_ticking_area_descriptor
data modify storage io: ticking_area_descriptor1 set from storage io: ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/copy
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor1
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_dimension
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_center
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_size
data modify storage world_handler:volatile ticking_areas_manager.new_ticking_area_descriptor set from storage io: ticking_area_descriptor

# Check for changed values

# Default to no changes
scoreboard players set ::world_handler::ticking_areas_manager change_level -1

# Get old ticking area properties
data modify storage io: ticking_area_descriptor set from storage world_handler:volatile ticking_areas_manager.old_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension
execute store result score ::world_handler::ticking_areas_manager temp1 run function world_handler:ticking_areas_manager/ticking_area_descriptor/get_size
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_center

# Check for dimension change
execute store success score ::world_handler::ticking_areas_manager success run data modify storage world_handler:volatile ticking_areas_manager.temp_dimension set from storage io: dimension
execute store result score ::world_handler::ticking_areas_manager success if score ::world_handler::ticking_areas_manager success = ::const FALSE
execute if score ::world_handler::ticking_areas_manager success = ::const FALSE run scoreboard players set ::world_handler::ticking_areas_manager change_level 0

# Check for center change
scoreboard players operation ::world_handler::ticking_areas_manager temp0 = ::out center_x
scoreboard players operation ::world_handler::ticking_areas_manager temp0 -= ::world_handler::ticking_areas_manager new_center_x
execute unless score ::world_handler::ticking_areas_manager temp0 matches 0 run scoreboard players set ::world_handler::ticking_areas_manager change_level 0
scoreboard players operation ::world_handler::ticking_areas_manager temp0 = ::out center_z
scoreboard players operation ::world_handler::ticking_areas_manager temp0 -= ::world_handler::ticking_areas_manager new_center_z
execute unless score ::world_handler::ticking_areas_manager temp0 matches 0 run scoreboard players set ::world_handler::ticking_areas_manager change_level 0

# Check for size change
scoreboard players operation ::world_handler::ticking_areas_manager temp0 = ::world_handler::ticking_areas_manager temp1
scoreboard players operation ::world_handler::ticking_areas_manager temp0 -= ::world_handler::ticking_areas_manager new_size
execute unless score ::world_handler::ticking_areas_manager temp0 matches 0 run scoreboard players set ::world_handler::ticking_areas_manager change_level 1

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/pop

# Update the ticking area descriptor inside the list
data modify storage io: ticking_area_descriptor set from storage world_handler:volatile ticking_areas_manager.new_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_list/update_by_uuid

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/push

# Update the overlapped ticking area map
execute if score ::world_handler::ticking_areas_manager change_level matches 0.. run function world_handler:ticking_areas_manager/overlapping/rebuild_map

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/pop

# Emit event

data modify storage io: old_ticking_area_descriptor set from storage world_handler:volatile ticking_areas_manager.old_ticking_area_descriptor

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::world_handler::ticking_areas_manager change_level
function stdmodulesystem:stack/push_score

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: old_ticking_area_descriptor"
function stdmodulesystem:stack/push

execute if score ::world_handler::ticking_areas_manager change_level matches 0 run function world_handler:events/emitters/on_ticking_area_location_changed

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: old_ticking_area_descriptor"
function stdmodulesystem:stack/pop

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
execute store result score ::world_handler::ticking_areas_manager change_level run scoreboard players operation ::world_handler::ticking_areas_manager change_level = ::out stack_score

execute if score ::world_handler::ticking_areas_manager change_level matches 1 run function world_handler:events/emitters/on_ticking_area_changed
