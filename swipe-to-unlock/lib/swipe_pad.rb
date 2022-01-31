class SwipePad
  def swipe(pattern)
    sequencia = pattern.split(' - ')
  inicio = sequencia[0]
  testa = sequencia.find_all {|i| sequencia.count(i) > 1} 
    if testa != []      
      return 'Inválido'      
    else       
      for i in 1...sequencia.length do 
         proximo = vizinho(inicio,sequencia[i]) 
        if !proximo 
          return 'Inválido'
        end    
        inicio = sequencia[i]        
      end        
    end
  return 'Válido'  
  end

  def count_invalid(list)
    sequencias = list.split("\n") 
    cont =0
    for inte in 0...sequencias.length
      sequencia = sequencias[inte].split(' - ')
      inicio = sequencia[0]
      testa = sequencia.find_all {|i| sequencia.count(i) > 1}  
      if testa != []  
        cont +=1
      else
        for i in 1...sequencia.length do 
          proximo = vizinho(inicio,sequencia[i]) 
         if !proximo
           cont +=1 
           break
         end    
         inicio = sequencia[i]        
       end         
      end
    end 
    return cont 
  end
  def vizinho(atual,proximo)
    gabarito = [['2','4','5'],
      ['1','3','4','5','6'],
      ['2','5','6'],
      ['1','2','5','7','8'],
      ['1','2','3','4','6','7','8','9'],
      ['2','3','5','8','9'],
      ['4','5','8'],
      ['4','5','6','7','9'],
      ['5','6','8']]    
      atual = atual.to_i-1  
      if gabarito[atual].include?(proximo) 
        return true
      else
        return false 
      end
  end
end

