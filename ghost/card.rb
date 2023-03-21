class Card

  attr_reader :value, :state, :true

  def initialize
    @value = value``
    @state =  false
    @true  =  value            #False means face-down which is the default

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

card1 = Card.new(:R, true)
  p card1.face_up?