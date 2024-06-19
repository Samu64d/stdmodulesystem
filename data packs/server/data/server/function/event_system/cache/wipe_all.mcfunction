#
# server:event_system/cache/wipe_all
#

# Clear static data
data remove storage server:static event_system
data modify storage server:static event_system set value {}

# Clear volatile data
data remove storage server:volatile event_system
data modify storage server:volatile event_system set value {}
