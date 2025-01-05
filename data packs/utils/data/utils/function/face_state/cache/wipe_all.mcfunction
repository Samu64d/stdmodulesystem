#
# utils:face_state/cache/wipe_all
#

# Clear static data
data remove storage utils:static face_state
data modify storage utils:static face_state set value {}

# Clear volatile data
data remove storage utils:volatile face_state
data modify storage utils:volatile face_state set value {}
