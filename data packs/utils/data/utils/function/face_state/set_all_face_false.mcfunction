#
# utils:face_state/set_all_face_false
#
# Set all faces of a face state to false
#> Storage
#  @face_state (inout): the face state
#> Return void

data modify storage io: face_state set from storage utils:static face_state.ALL_FACES_FALSE
