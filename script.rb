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
#we could try all 8. -> 8*8*8*8...

#2right_main - 2left_main + 1right_sub - 1left_sub = FH
#2up_main - 2down_main + 1up_sub - 1down_sub = FV
#=>possible combinations/
#up_main + down_main = right_sub + left_sub/ right_main + left_main = up_sub + down_sub
#
#right_main + left_main = up_sub + down_sub
#right_sub + left_sub = up_main + down_main
#
#given ([0,0],[5,7])
#S=2up/down and 1 left/right
#M=2left/right and 1 up/down
#2M + 1S = FH
#2S + 1M = FV
#1M = FV - 2S
#2FV -4S + 1S = FH
#2FV - FH = 3S
#(2FV-FH)/3 = S
#
#FH=5,FV=7
#(14-5)/3 = 3 = S
#7 - 2*3 = 1 = M
#means three S moves (2vertically + 1horizontally) and one M move (2horizontally + 1vertically)
#
##2right_main - 2left_main + 1right_sub - 1left_sub = FH
#2up_main - 2down_main + 1up_sub - 1down_sub = FV
#=>possible combinations/
#
#right_main + left_main = up_sub + down_sub, but right_main - left_main != right_sub - left_sub
#right_sub + left_sub = up_main + down_main, but right_sub - left_sub != up_main + down_main

#2right_main - 2left_main + 1right_sub - 1left_sub + 2up_main - 2down_main + 1up_sub - 1down_sub = FH + FV
#1right_main + 1left_main + 1right_sub + 1left_sub - up_sub - down_sub - up_main - down_main = 0

#a,b,c,d,e,f,g,h/ / 2a -2b +c -d = FH/ 2e -2f +g -h = FV/ a+b=g+h/ c+d=e+f


#
#another method, try and error. move 2right 1up, if ==, done./ move 2r 1u, if new_x >2, move 2r. etc.

def knight_moves(initial_pos,final_pos)
    
  x, y = initial_pos
  new_x, new_y = final_pos
  
  horizontally = new_x - x 
  vertically = new_y - y

  moves = [
    [2,1], [2,-1], [-2,1], [-2,-1], 
    [1,2], [1,-2], [-1,2], [-1,-2]
  ]

  queue = [[initial_pos,0]]

  visited = Set.new
  visited.add(initial_pos)

  until queue.empty?
    initial_pos, steps = queue.shift
    x, y = initial_pos

    return steps if initial_pos == final_pos
  end

  
  puts [horizontally, vertically]
  puts ""

  s_move = (2*vertically - horizontally)/3
  m_move = vertically - 2*s_move

  puts [s_move,m_move]

end

knight_moves([0,0],[5,7])

  

