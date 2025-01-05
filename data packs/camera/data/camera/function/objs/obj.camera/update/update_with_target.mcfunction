#
# camera:objs/obj.camera/update/update_with_target
#

# Check for valid target
data modify storage io: pointer set from entity @s data.target
execute unless function obj:is_loaded run return 0

# Get target dimension
data modify storage io: pointer set from entity @s data.target
data modify storage io: method set value "get_dimension"
function obj:bind

# Set the new camera dimension
data modify storage io: method set value "set_dimension"
function obj:invoke

# Get target position
data modify storage io: pointer set from entity @s data.target
data modify storage io: method set value "get_position"
function obj:bind

# Calculate new camera position
data modify storage io: vector0 set from storage io: position
data modify storage io: vector1 set from entity @s data.offset
function nmath:vector3d/add

# Set the new camera position
data modify storage io: method set value "set_position"
data modify storage io: position set from storage io: vector0
function obj:invoke

# Get target moving animation duration
data modify storage io: pointer set from entity @s data.target
data modify storage io: method set value "get_moving_animation_duration"
execute store result score ::in moving_animation_duration run function obj:bind

# Set the new camera moving animation duration
data modify storage io: method set value "set_moving_animation_duration"
data modify storage io: position set from storage io: vector0
function obj:invoke
