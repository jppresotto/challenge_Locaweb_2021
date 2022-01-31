class Finder
  def index_of(list, value)
    variable = []  
    for i in 0..-1+list.length do
        if list[i].include?(value)
            variable << i
        end    
    end
    return variable
  end
end
