
require_relative "card.rb"


class Board

    def initialize(size)        #4
        @size = size 
        @grid = Array.new(size) {Array.new(size)}


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
        pairs = (@grid.length ** 2) / 2 # calculate the number of card pairs needed
        values = (1..pairs).to_a * 2 # create an array of values for each card pair
        values.shuffle! # shuffle the array so that the pairs are randomized
      
        # iterate over each cell in the grid and assign a new card with a value from the values array
        @grid.each_with_index do |row, i|
          row.each_with_index do |cell, j|
            @grid[i][j] = Card.new(values.pop)
          end
        end
      end
      

      def render
        @grid.each.with_index do |row,i|
            row.each.with_index do |card,i|
                count = 0
                if count == @size
                    count = 1
                    puts "\n"
                    print card.to_s
                    print " "
                else
                    print card.to_s
                    print " "
                    count += 1
                end
            end 
        end
      end
    
    

    # def won?

    #     @grid.each do |i|
    #         i.each do |j|
    #           if j == "_"
    #             return false 
    #         end 
    #     end 
    #     return true 
    # end 

end 