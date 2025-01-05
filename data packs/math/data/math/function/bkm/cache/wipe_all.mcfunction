#
# math:bkm/cache/wipe_all
#

# Clear static data
data remove storage math:static bkm
data modify storage math:static bkm set value {}

# Clear volatile data
data remove storage math:volatile bkm
data modify storage math:volatile bkm set value {}
