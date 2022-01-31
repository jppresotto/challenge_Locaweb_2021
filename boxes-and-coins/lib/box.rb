class Box
  def cycle_to_position(coin_number, box_number, position)
    coin_temp = coin_number
    box=[]
     sobra = coin_number % box_number
     divisao_int= (coin_number-sobra) / box_number

        for i in 0...box_number do
            box[i] = divisao_int
        end
    coin_temp = sobra
    while coin_temp > 0
      for i in 0...box_number do
        if coin_temp > 0
          box[i]+=1
          coin_temp -=1                 
        else
            break                
        end         
      end
    end 
    return box[position-1]
  end

  def cycle_to_last(coin_number, box_number)
    coin_temp = coin_number
    box=[]
    ultima_cx =0
    for i in 0...box_number do
        box[i] = 0
    end
    
    while coin_temp > 0
      for i in 0...box_number do
        if coin_temp > 0
          box[i]+=1
          coin_temp -=1
          ultima_cx= i
        end          
      end
    end   
    return box[ultima_cx]
  end
end
