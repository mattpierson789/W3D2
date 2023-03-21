
require_relative "card.rb"


class Board

    def initialize(cards)
        @grid = Array.new(4) {Array.new(4,0)}
        @pairs = 


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
        total_cards = @grid.flatten.length
        num_cards = 0
        while num_cards < total_cards
            random_row = rand(0...@grid.length)
            random_col = rand(0...@grid.length)
            pos = [random_row,random_col]
            if self[pos] == 0
        end

    end

end 