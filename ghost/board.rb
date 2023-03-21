
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
    
        val = ((1...((@size ** 2) / 2)).to_a * 2).shuffle
        @grid.each do |i|
            @grid[i].each do |j|
                self[[i, j]] = Card.new(val.pop)
            end
        end
    
    end

    def self.render(grid)
        
    end

end 