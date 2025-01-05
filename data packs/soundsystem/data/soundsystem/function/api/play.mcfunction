#
# soundsystem:api/play
#
# Play a sound to a player
#> Storage
#  @dimension (in): the dimension
#  @position (in): the position
#  @sound_id (in): the sound id
#  @channel (in): the channel
#  @volume (in): the sound volume
#  @pitch (in): the sound pitch
#  @minimum_volume (in): the sound minimum volume
#> Context
#  @executor (in): the player entity
#> Return void

# Get position
data modify storage io: vector set from storage io: position
function nmath:vector3d/get_x
function nmath:vector3d/get_y
function nmath:vector3d/get_z

# Play sound
function soundsystem:api/play/play with storage io:
