#
# math:hashtables/cache/wipe_all
#

# Clear static data
data remove storage math:static hashtables
data modify storage math:static hashtables set value {}

# Clear volatile data
data remove storage math:volatile hashtables
data modify storage math:volatile hashtables set value {}
