#
# data_observer:boot/bootmgr
#

# Check for uninitialized observed data list
execute unless function data_observer:observed_data_list/is_initialized run function data_observer:observed_data_list/empty
