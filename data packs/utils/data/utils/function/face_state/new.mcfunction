#
# utils:face_state/new
#
# Create a new face state
#> Storage
#  @face_state (out): the face state
#> Return void

data modify storage io: face_state set from storage utils:static face_state.ALL_FACES_FALSE
