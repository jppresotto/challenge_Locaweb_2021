class BookEditor
  def count_pages(book, actions, targets)
    if actions !='' 
      array_book = acoes(book, actions)
    else
      array_book = book.split(/\W+/).slice(1..-1) 
    end  
    resultado =''
    direcao= ''
    menor=100    
    for i in 0...array_book.length do
      if targets[0] == array_book[i]       
        for j in 0...array_book.length do
          if targets[1] == array_book[j]
            temp = i-j
              if temp < 0              
                direcao = ' para frente' 
                menor = paraFrente(array_book,targets)
              end
              if temp > 0 
                direcao = ' para trás' 
                menor = paraTras(array_book,targets)
              end
          end
        end 
      end
    end 
    return resultado = ("#{menor}#{direcao}")  
  end
  def paraFrente(array_book,targets)
    cont_frent =0
    temp=0
    menor =100
    for i in 0...array_book.length do
      if targets[0] == array_book[i]       
        for j in i...array_book.length do        
          if targets[1] == array_book[j]
            temp = i-j   
              cont_frent = temp.abs / 2
              if  ((temp.abs % 2.0 == 1)&&(i.odd?))
                cont_frent +=1
              end   
            if cont_frent < menor
              menor = cont_frent
            end         
          end 
        end
        cont_frent =0      
      end
    end     
    return menor
  end
  
  def paraTras(array_book,targets) 
    cont_tras =0
      menor = 100    
      for i in 0...array_book.length do
        if targets[1] == array_book[i]      
          for j in i...array_book.length do
            cont_tras+=1 if ((i.odd?)&&(j.even?))
            cont_tras+=1 if ((i.even?)&&(j.odd?)) 
            if targets[0] == array_book[j]
              temp = i-j                      
              if cont_tras < menor
                menor = cont_tras
                menor =1 if cont_tras ==0
              end 
            end
          end
          cont_tras = 0
        end
      end   
      return menor
  end
  def acoes(book, actions)
    array_book = book.split(/\W+/).slice(1..-1)   
    temp=[]    
      acao = actions.split(' ')
      for i in 0...acao.length do
        if acao[i] == '<<'
          temp_troca = array_book[0]
          for j in 0...array_book.length do
            array_book[j] = array_book[j+1]
          end
          array_book[array_book.length-1]= temp_troca                     
        elsif acao[i] == '>>'
          temp_troca = array_book[array_book.length-1]
          for j in (array_book.length).downto(0) do
            array_book[j] = array_book[j-1]
          end
          array_book[0]= temp_troca  
          array_book.pop()        
        else
          temp = acao[i].split('<>')
          acao1=temp[0].to_i
          acao2=temp[1].to_i
            temp_troca = array_book[acao1]
            array_book[acao1] = array_book[acao2]
            array_book[acao2] = temp_troca                                
        end 
      end
      return array_book
  end
end
