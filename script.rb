#take initial position, and final position
#count how far it has to travel both horizontally and vertically
#use the fact that we always have to travel either 2 horizontally AND 1 vertically or 1 horizontally AND 2 vertically by the rule
#we can have both positive and negative values, to the right and to the left/ upward and downward
#divide by 2 unil the remainder is either 1 or 0// two equations like -> 2h + 1v = C, 1h + 2v = D// or maybe just don't 
## H = 2 // FH = 4
# V = 3 + 0.5 // FV = 7

#2a + 1b = FH
#1a + 2b = FV 
#2^2^2/ 2left/right * 1up/down, 2up/down * 1left/right

def knight_moves(initial_pos,final_pos)
    
  x, y = initial_pos
  new_x, new_y = final_pos
  
  horizontally = new_x - x 
  vertically = new_y - y
  
  puts [horizontally, vertically]

end

knight_moves([1,3],[4,7])

  

