#
# data_observer:cache/wipe_all
#

# Clear static data
data remove storage data_observer:static {}
data modify storage data_observer:static {} set value {}

# Clear volatile data
data remove storage data_observer:volatile {}
data modify storage data_observer:volatile {} set value {}
