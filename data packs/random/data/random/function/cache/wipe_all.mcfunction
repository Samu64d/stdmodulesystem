#
# random:cache/wipe_all
#

# Clear static data
data remove storage random:static {}
data modify storage random:static {} set value {}

# Clear volatile data
data remove storage random:volatile {}
data modify storage random:volatile {} set value {}
