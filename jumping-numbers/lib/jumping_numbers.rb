class JumpingNumbers
  def jump(list)
    temp = list[0]
    temp_it =1
    pos_maior=0
    maior = 0
    iterador = 1
    novalista=""  
    novalista<<list[0].to_s

    while iterador <= list.length-1

        for i in iterador..temp do
            if i >= list.length-1
                novalista<<" - #{list[i]}"                                                              
                return novalista 
            end                  
            if list[i] >= maior                 
                maior = list[i] 
                pos_maior = temp_it               
            end
            temp_it +=1
        end   
  
        iterador = pos_maior+1
        temp = maior + pos_maior    
        novalista<<" - #{maior}"
        maior=0
        temp_it=pos_maior+1
       
    end 
  end
end
