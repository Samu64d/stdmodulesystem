#
# uuid:cache/wipe_all
#

# Clear static data
data remove storage uuid:static {}
data modify storage uuid:static {} set value {}

# Clear volatile data
data remove storage uuid:volatile {}
data modify storage uuid:volatile {} set value {}
