#
# number:to_fractional/is_fractional
#

# Add leading zero
execute if score ::number index matches 0 run function number:to_fractional/pad_leading
