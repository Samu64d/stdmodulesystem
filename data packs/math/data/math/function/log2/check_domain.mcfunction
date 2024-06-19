#
# math:log2/check_domain
#

# Fix very small numbers
execute if score ::in value matches ..34 run function math:log2/small_numbers_values

# Calculate
execute if score ::in value matches 35.. run function math:bkm/functions/log2
