require 'player'

class JumpRace

  def jump(players)
    tester = 1 
    soma =[]
    result = false
    for i in 0..-1+players.length do
      soma[i] = players[i].jump_distance + players[i].initial_location      
    end
    while tester < 100      
      for i in 0..-1+players.length do
        soma[i] += players[i].jump_distance     
      end
      tester+=1  
      for i in 0..-1+players.length do
        for j in i+1..-1+players.length do
          result = soma[i].eql?(soma[j])
        end
      end 
      if result
        return(tester)
      end       
    end
    return(result)  
  end
end
