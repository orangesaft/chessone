require 'set'

def knight_moves(start_pos, end_pos)
  moves = [
    [2, 1], [2, -1], [-2, 1], [-2, -1],
    [1, 2], [1, -2], [-1, 2], [-1, -2]
  ]

  # BFS setup
  queue = [[start_pos, 0, [start_pos]]] # Start with initial position and 0 moves
  visited = Set.new        # To track visited positions
  visited.add(start_pos)   # Mark starting position as visited

  until queue.empty?
    current_pos, steps, path = queue.shift # Get the current position and 
        if current_pos == end_pos
            puts "Steps needed: #{steps}"
            #puts path
            puts "Path: #{path.map { |pos| pos.inspect }.join(' -> ')}"
            return steps, path
        end

    moves.each do |dx, dy|
      new_pos = [current_pos[0] + dx, current_pos[1] + dy]
      if new_pos.all? { |coord| coord.between?(0, 7) } && !visited.include?(new_pos)
        queue << [new_pos, steps + 1, path + [new_pos]] # Add to queue with steps incremented
        visited.add(new_pos)          # Mark as visited
      end
    end
  end
end


puts "Welcome to knight move simulator!\n\n"
puts "Input the starting position ([0,0] to [7,7])"
start_pos = gets.chomp.gsub(/[^\d,]/, '').split(',').map(&:to_i)
puts "Input the ending position ([0,0] to [7,7]"
end_pos = gets.chomp.gsub(/[^\d,]/, '').split(',').map(&:to_i)

knight_moves(start_pos,end_pos)

