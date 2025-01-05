#
# camera:objs/obj.camera/new
#
# Create a new camera from an object
#> Storage
#  @moving_animation_duration (in): the moving animation duration time. Set -1 to disable
#> Context
#  @executor (in): the camera
#> Return void

# Super
function obj:objs/obj.controlled_display_entity/new

# Target
data modify entity @s data.target set value "NULL"

# Offset
function nmath:vector3d/new
data modify entity @s data.offset set from storage io: vector

# Get object dimension
data modify storage io: method set value "get_dimension"
function obj:invoke

# Get object position
data modify storage io: method set value "get_position"
function obj:invoke

# Create entity
data modify storage io: type set value "minecraft:text_display"
data modify storage io: callback set value "camera:objs/obj.camera/new/set_data"
function minecraft_entity_api:entity/new

# Set uuid
data modify entity @s data.controlled_entity set from storage io: uuid
