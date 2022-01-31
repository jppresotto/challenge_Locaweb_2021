class Chars
  def unique_quantity(text)
    text = text.split(' ') 
    tot = 0
    cont =0    
    for i in 0.. -1+text.length do
        temp = text[i].split('')     
        for j in 0..-1+temp.size do          
            for j2 in j+1..-1+temp.size do
                if temp[j] == temp[j2]
                    cont+=1
                    break                
                end
            end               
        end  
        tot += (temp.size - cont)
        cont = 0                  
    end
    return tot  
  end
end
