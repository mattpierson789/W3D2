require_relative "board.rb"

class Card



  attr_reader :value, :state, :true

  def initialize(value)
    @value = value
    @state =  false
    @true  =  value            #False means face-down which is the default

  end

  def to_s

    @value 
    
  end 
  
  
  def face_up?
    
    if @state == true
         true 
         return @value
    else 
        return false             
      
    end
    
  end

def hide 

    if self.face_up?

        @value = "_"
    end 
end 

end 



