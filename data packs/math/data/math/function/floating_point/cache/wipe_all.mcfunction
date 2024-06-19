#
# math:floating_point/cache/wipe_all
#

# Clear static data
data remove storage math:static floating_point
data modify storage math:static floating_point set value {}

# Clear volatile data
data remove storage math:volatile floating_point
data modify storage math:volatile floating_point set value {}
