class Sudoku
  def check(list)
    teste_array = list.size
    if teste_array > 9 || teste_array < 9
      return false
    else
      for i in 0..8 do        
        for j in i+1..8 do
          if list[i] == list [j]
            return false 
            break                       
          end
        end                  
      end
    return true       
    end
  end
end
