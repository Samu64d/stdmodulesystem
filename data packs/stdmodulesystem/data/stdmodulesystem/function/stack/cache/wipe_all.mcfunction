#
# stdmodulesystem:stack/cache/wipe_all
#

# Clear static data
data remove storage stdmodulesystem:static stack
data modify storage stdmodulesystem:static stack set value {}

# Clear volatile data
data remove storage stdmodulesystem:volatile stack
data modify storage stdmodulesystem:volatile stack set value {}
