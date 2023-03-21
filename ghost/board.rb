
require_relative "card.rb"


class Board

    def initialize(size)        #4
        @size = size 
        @grid = Array.new(size) {Array.new(size,0)}
        @pair1 = Card.new


    end 

    def grid 

        @grid

    end 

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos 
        @grid[row][col] = val
    end

    def populate
    
        num_cards = 0
        while num_cards < total_cards
            random_row = rand(0...@grid.length)
            random_col = rand(0...@grid.length)
            pos = [random_row,random_col]
            if grid[pos] == 0
                @grid[pos] = pair1
                


                
        end

    end

end 