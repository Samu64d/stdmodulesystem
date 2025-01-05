#
# keyboard:cache/wipe_all
#

# Clear static data
data remove storage keyboard:static {}
data modify storage keyboard:static {} set value {}

# Clear volatile data
data remove storage keyboard:volatile {}
data modify storage keyboard:volatile {} set value {}
