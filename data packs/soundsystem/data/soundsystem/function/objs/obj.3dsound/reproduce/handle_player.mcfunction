#
# soundsystem:objs/obj.3dsound/reproduce/handle_player
#

# Get player dimension
function minecraft_entity_api:entity/get_dimension

# Get player position
function minecraft_entity_api:entity/get_position
data modify storage io: vector0 set from storage io: position 

# Calculate distance

# Calculate vector difference vector
function nmath:vector3d/sub

# Calculate difference vector norm
data modify storage io: vector set from storage io: vector0
function nmath:vector3d/norm

# Convert to floating point
data modify storage io: value set from storage io: result
function math:floating_point/from_storage
data modify storage soundsystem:volatile obj3dsound.distance set from storage io: result

# Calculate volume

# Volume = min(0, base_volume - distance / volume_attenuation)

# Get attenuation volume
data modify storage io: method set value "get_volume_attenuation"
function obj:bind
data modify storage io: value set from storage io: volume_attenuation
function math:floating_point/from_storage

# Calculate factor
data modify storage io: value0 set from storage soundsystem:volatile obj3dsound.distance
data modify storage io: value1 set from storage io: result
function math:floating_point/div
data modify storage soundsystem:volatile obj3dsound.temp_value set from storage io: result

# Get base volume
data modify storage io: method set value "get_base_volume"
function obj:bind
data modify storage io: value set from storage io: base_volume
function math:floating_point/from_storage

# Substract factor
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage soundsystem:volatile obj3dsound.temp_value
function math:floating_point/sub

# Check for negative values
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage math:static floating_point.ZERO
execute if function math:floating_point/compare/less run return 0

# Convert to storage
data modify storage io: value set from storage io: result
function math:floating_point/to_storage_double
data modify storage io: volume set from storage io: result

# Retrive sound informations

# Get sound id
data modify storage io: method set value "get_sound_id"
function obj:bind

# Get channel
data modify storage io: method set value "get_channel"
function obj:bind

# Get speed
data modify storage io: method set value "get_speed"
function obj:bind
data modify storage io: value set from storage io: speed
function math:floating_point/from_storage
data modify storage soundsystem:volatile obj3dsound.speed set from storage io: result

# Check if has speed
data modify storage io: method set value "has_speed"
execute store result score ::soundsystem::objs::obj.3dsound has_speed run function obj:invoke

# If sound has not speed
execute if score ::soundsystem::objs::obj.3dsound has_speed = ::const FALSE run function soundsystem:objs/obj.3dsound/common/reproduce_sound_to_player

# If sound has speed
execute if score ::soundsystem::objs::obj.3dsound has_speed = ::const TRUE run function soundsystem:objs/obj.3dsound/reproduce/schedule_sound_for_player
