class DiseaseControl
  def evaluate(groups, target_symptoms)
    grupo = groups.split("\n\n")
    cont_int =0
    cont_gro =0
    cont_aux=0
    sintomas = target_symptoms.split(', ')
  
    for i in 0...grupo.length do
      integrante = grupo[i].split("\n")    
      for j in 0...integrante.length do
        if integrante[j].include?(sintomas[0])
          for s in 0...sintomas.length do
            if integrante[j].include?(sintomas[s])
              cont_aux +=1
            end          
          end        
        end  
        if cont_aux == sintomas.length
          cont_int += 1     
        end
        cont_aux=0    
      end
      if cont_int == integrante.length
        cont_gro +=1
      end
      cont_int=0   
    end
    return cont_gro
  end
end
