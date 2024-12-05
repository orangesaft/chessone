def knight_moves(initial_pos,final_pos)
    
  x, y = initial_pos
  new_x, new_y = final_pos
  
  horizontally = new_x - x 
  vertically = new_y - y
  
  puts [horizontally, vertically]

end

knight_moves([1,3],[4,7])

  

