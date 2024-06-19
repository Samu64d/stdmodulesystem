#
# soundsystem:sound/play
#
# Play a sound to a player
#> Storage
#  @location (in): the world location
#  @sound_id (in): the sound id
#  @channel (in): the channel
#  @volume (in): the sound volume
#  @pitch (in): the sound pitch
#  @minimum_volume (in): the sound minimum volume
#> Context
#  @executor: the player
#> Return void

data modify storage io: dimension set from storage io: location.dimension
data modify storage io: x_position set from storage io: location.position[0]
data modify storage io: y_position set from storage io: location.position[1]
data modify storage io: z_position set from storage io: location.position[2]
function soundsystem:sound/play/play with storage io:
