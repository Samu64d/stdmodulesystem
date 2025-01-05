#
# string:escape/on_entity
#

# Set text data
data modify entity @s text set from storage io: string

# Get text data
data modify storage io: string set string entity @s text 1 -1
