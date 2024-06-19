#
# utils:face_state/get_face
#
# Get a face value of a face state
#> Scores
#  @face (in): the face direction
#> Storage
#  @face_state (in): the face state
#> Return data
#  face value

execute if score ::in face = ::utils::enum_directions DOWN run return run data get storage io: face_state.down 1.0
execute if score ::in face = ::utils::enum_directions UP run return run data get storage io: face_state.up 1.0
execute if score ::in face = ::utils::enum_directions NORTH run return run data get storage io: face_state.north 1.0
execute if score ::in face = ::utils::enum_directions SOUTH run return run data get storage io: face_state.south 1.0
execute if score ::in face = ::utils::enum_directions WEST run return run data get storage io: face_state.west 1.0
execute if score ::in face = ::utils::enum_directions EAST run return run data get storage io: face_state.east 1.0
