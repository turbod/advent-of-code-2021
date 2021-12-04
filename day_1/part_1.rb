# input = %w(
# 2
# 5
# 3
# 6
# 2
# 1
# )


prev_value = nil
sum = input.reduce(0) do |sum, value|
  change = prev_value && prev_value.to_f < value.to_f ? 1 : 0
  prev_value = value.to_f
  sum + change
end