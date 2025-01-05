#
# utils:face_state/set_face
#
# Set a face value of a face state
#> Scores
#  @face (in): the face direction
#  @face_value (in): the face value
#> Storage
#  @face_state (inout): the face state
#> Return void

execute if score ::in face = ::utils::enum_directions DOWN store result storage io: face_state.down byte 1.0 run scoreboard players get ::in face_value
execute if score ::in face = ::utils::enum_directions UP store result storage io: face_state.up byte 1.0 run scoreboard players get ::in face_value
execute if score ::in face = ::utils::enum_directions NORTH store result storage io: face_state.north byte 1.0 run scoreboard players get ::in face_value
execute if score ::in face = ::utils::enum_directions SOUTH store result storage io: face_state.south byte 1.0 run scoreboard players get ::in face_value
execute if score ::in face = ::utils::enum_directions WEST store result storage io: face_state.west byte 1.0 run scoreboard players get ::in face_value
execute if score ::in face = ::utils::enum_directions EAST store result storage io: face_state.east byte 1.0 run scoreboard players get ::in face_value
