#
# soundsystem:objs/obj.3dsound/reproduce/schedule_sound_for_player
#

# Calculate time for sound to reach player

# Time = distance / speed
data modify storage io: value0 set from storage soundsystem:volatile obj3dsound.distance
data modify storage io: value1 set from storage soundsystem:volatile obj3dsound.speed
function math:floating_point/div

# Convert to score
data modify storage io: value set from storage io: result
execute store result score ::soundsystem::objs::obj.3dsound temp0 run function math:floating_point/to_score

# Calculate ticks from time
scoreboard players operation ::soundsystem::objs::obj.3dsound temp0 *= ::int 20

# Calculate final time
execute store result score ::soundsystem::objs::obj.3dsound temp1 run function time:mc_time/get_game_time
scoreboard players operation ::soundsystem::objs::obj.3dsound temp0 += ::soundsystem::objs::obj.3dsound temp1

# Get player uuid
function minecraft_entity_api:entity/get_uuid_as_string

# Create scheduled sound object
data modify storage io: scheduled_sound_object set value {}
data modify storage io: scheduled_sound_object.target set from storage io: uuid
data modify storage io: scheduled_sound_object.sound_id set from storage io: sound_id
data modify storage io: scheduled_sound_object.channel set from storage io: channel
data modify storage io: scheduled_sound_object.volume set from storage io: volume
execute store result storage io: scheduled_sound_object.reproduce_time int 1.0 run scoreboard players get ::soundsystem::objs::obj.3dsound temp0

# Schedule sound
data modify storage io: method set value "schedule_sound"
function obj:bind
