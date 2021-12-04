input = <<-STR.strip
forward 5
down 5
forward 8
up 3
down 8
forward 2
STR


input_array = input.split("\n").map(&:strip)

horizontal = 0
depth = 0

input_array.each do |full_command|
  command, step = full_command.split(' ', 2)
  #p command
  #p step

  case command
  when 'forward'
    horizontal += step.to_f
  when 'up'
    depth -= step.to_f
  when 'down'
    depth += step.to_f
  end  
end

p "horizontal: #{horizontal}"
p "depth: #{depth}"
p "Multiply: #{horizontal * depth}"

