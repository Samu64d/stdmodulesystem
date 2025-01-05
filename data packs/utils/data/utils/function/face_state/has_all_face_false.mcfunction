#
# utils:face_state/has_all_face_false
#
# Check if all face values of a face state are false
#> Storage
#  @face_state (in): the face state
#> Return data
#  boolean flag

data modify storage utils:volatile face_state.temp_face_state set from storage io: face_state

# Check matching
execute store success score ::utils::face_state success run data modify storage utils:volatile face_state.temp_face_state set from storage utils:static face_state.ALL_FACES_FALSE
execute store result score ::utils::face_state success if score ::utils::face_state success = ::const FALSE

# Return data
return run scoreboard players get ::utils::face_state success
