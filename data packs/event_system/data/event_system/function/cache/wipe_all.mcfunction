#
# event_system:cache/wipe_all
#

# Clear static data
data remove storage event_system:static {}
data modify storage event_system:static {} set value {}

# Clear volatile data
data remove storage event_system:volatile {}
data modify storage event_system:volatile {} set value {}
