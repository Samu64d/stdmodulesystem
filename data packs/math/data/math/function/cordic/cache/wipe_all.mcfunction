#
# math:cordic/cache/wipe_all
#

# Clear static data
data remove storage math:static cordic
data modify storage math:static cordic set value {}

# Clear volatile data
data remove storage math:volatile cordic
data modify storage math:volatile cordic set value {}
