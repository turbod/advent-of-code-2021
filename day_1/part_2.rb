# input = %w(
# 199
# 200
# 208
# 210
# 200
# 207
# 240
# 269
# 260
# 263
# )

prev_value = nil
changes = []

input.each_with_index do |value, idx|
  next if (input.size - 3) < idx
  sum = input[idx].to_f + input[idx+1].to_f + input[idx+2].to_f

  if prev_value.nil?
    changes << 'n/a'
    prev_value = sum
    next
  end

  changes << 'increased' if prev_value < sum
  changes << 'decreased' if prev_value > sum
  changes << 'no change' if prev_value == sum
  prev_value = sum
end

p changes.count { |value| value == 'increased' }