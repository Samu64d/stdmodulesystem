#
# utils:face_state/compare
#
# Compare two face states
#> Storage
#  @face_state0 (in): the first face state to compare
#  @face_state1 (in): the second face state to compare
#> Return data
#  boolean flag

data modify storage utils:volatile face_state.temp_face_state set from storage io: face_state0

# Check matching
execute store success score ::utils::face_state success run data modify storage utils:volatile face_state.temp_face_state set from storage io: face_state1
execute store result score ::utils::face_state success if score ::utils::face_state success = ::const FALSE

# Return data
return run scoreboard players get ::utils::face_state success
