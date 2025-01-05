#
# utils:face_state/cache/set_static
#

data modify storage utils:static face_state.ALL_FACES_FALSE set value {down: false, up: false, north: false, south: false, west: false, east: false}
data modify storage utils:static face_state.ALL_FACES_TRUE set value {down: true, up: true, north: true, south: true, west: true, east: true}
