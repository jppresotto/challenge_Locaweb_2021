class SpreadTable
  def cycle(table, cycles)
    table_aux=[]   
    cont=0
    coringa_s=''
    corinfa_i=0
    for rep in 0..-1+cycles do
      table.each{|e| table_aux << e.dup} 
      for i in 0..-1+table.length do   
        for j in 0..-1+table.length do 

          if table[i][j]== 'o'
            coringa_s ='!'
            coringa_i =3
          end
          if table[i][j]== '!'
            coringa_s ='o'
            coringa_i =4
          end

            #Primeira linha Primeira Coluna
            if ((i == 0)&&(j == 0))
              cont+=1 if table[i][j+1] == coringa_s 
              cont+=1 if table[i+1][j+1] == coringa_s 
              cont+=1 if table[i+1][j] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s            
              end                  
              cont=0  
            end 
            #Primeira linha meio      
            if ((i == 0)&&((j > 0)&&(j < (table.length-1))))
              cont+=1 if table[i][j+1] == coringa_s 
              cont+=1 if table[i+1][j+1] == coringa_s 
              cont+=1 if table[i+1][j] == coringa_s 
              cont+=1 if table[i][j-1] == coringa_s 
              cont+=1 if table[i+1][j-1] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s            
              end                  
              cont=0  
            end 
            #Primeira linha Ultima Coluna        
            if ((i == 0)&&(j == (table.length-1)))
              cont+=1 if table[i+1][j] == coringa_s 
              cont+=1 if table[i][j-1] == coringa_s 
              cont+=1 if table[i+1][j-1] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s            
              end                  
              cont=0  
            end
            #Primeira Coluna Meio
            if ((j == 0)&&((i > 0)&&(i < (table.length-1))))
              cont+=1 if table[i][j+1] == coringa_s 
              cont+=1 if table[i+1][j+1] == coringa_s 
              cont+=1 if table[i-1][j] == coringa_s 
              cont+=1 if table[i-1][j+1] == coringa_s 
              cont+=1 if table[i+1][j] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s           
              end                  
              cont=0  
            end 
            #Terceira Linha Inicio
            if ((j == 0)&&((i == (table.length-1))))
              cont+=1 if table[i][j+1] == coringa_s           
              cont+=1 if table[i-1][j] == coringa_s 
              cont+=1 if table[i-1][j+1] == coringa_s           
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s            
              end                  
              cont=0  
            end
            #Ultima Coluna Meio 
            if (((i > 0)&&(i < (table.length-1)))&&((j == (table.length-1))))         
              cont+=1 if table[i+1][j] == coringa_s 
              cont+=1 if table[i][j-1] == coringa_s 
              cont+=1 if table[i+1][j-1] == coringa_s 
              cont+=1 if table[i-1][j-1] == coringa_s 
              cont+=1 if table[i-1][j] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s            
              end                  
              cont=0  
            end         
            #Ultima Linha Meio 
            if (((j > 0)&&(j < (table.length-1)))&&((i == (table.length-1))))         
              cont+=1 if table[i][j-1] == coringa_s          
              cont+=1 if table[i-1][j-1] == coringa_s 
              cont+=1 if table[i-1][j] == coringa_s 
              cont+=1 if table[i-1][j+1] == coringa_s 
              cont+=1 if table[i][j+1] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s           
              end                  
              cont=0  
            end 
            #Ultima Linha Ultima Coluna
            if ((j == (table.length-1))&&(i == (table.length-1)))         
              cont+=1 if table[i][j-1] == coringa_s          
              cont+=1 if table[i-1][j-1] == coringa_s 
              cont+=1 if table[i-1][j] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s            
              end                  
              cont=0  
            end 
            #Coração - Meio
            if (((i > 0)&&(i < (table.length-1)))&&((j > 0)&&(j < (table.length-1))))        
              cont+=1 if table[i][j-1] == coringa_s          
              cont+=1 if table[i-1][j-1] == coringa_s 
              cont+=1 if table[i-1][j] == coringa_s 
              cont+=1 if table[i-1][j+1] == coringa_s         
              cont+=1 if table[i][j+1] == coringa_s 
              cont+=1 if table[i+1][j-1] == coringa_s 
              cont+=1 if table[i+1][j] == coringa_s 
              cont+=1 if table[i+1][j+1] == coringa_s 
              if cont >=coringa_i 
                table_aux[i][j]=coringa_s                   
              end                  
              cont=0  
            end                         
                 
        end
      end
      table =[]
      table_aux.each{|e| table << e.dup}
      table_aux =[]
    end
  return table 
  end
end
