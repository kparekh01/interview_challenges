def takeTurn(string)
 blank_array = []
 turns_array = []
 nums = string.delete('^0-9')
 nums.split("").each{|num| blank_array << num.to_i}
 blank_array.each_slice(2){|slice| turns_array << slice}

  winning_array = [
    [[0,0],[0,1],[0,2]],
    [[1,0],[1,1],[1,2]],
    [[2,0],[2,1],[2,2]],
    [[0,0],[1,0],[2,0]],
    [[0,1],[1,1],[2,1]],
    [[0,2],[1,2],[2,2]],
    [[0,0],[1,1],[2,2]],
    [[0,2],[1,1],[2,0]]
  ]
 tic_tac_hash = {}
 tic_tac_hash["board"] = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
 boards = tic_tac_hash["board"]

 x_index_array = []
 o_index_array = []
 unless winning_array.include?(x_index_array) || winning_array.include?(o_index_array)
    turns_array.each_with_index do |array, index|
      if index.even?
       boards[array[0]][array[1]] = "x"
       x_index_array << [array[0], array[1]]
      elsif
       boards[array[0]][array[1]] = "o"
       o_index_array << [array[0], array[1]]
      end
    end
 end
 if winning_array.include?(x_index_array)
   tic_tac_hash["win"] = "x"
 elsif winning_array.include?(o_index_array)
   tic_tac_hash["win"] = "o"
 elsif tic_tac_hash["board"].map{|arr| arr.all?{|element| element != nil}}.all?{|bln| bln == true}
   tic_tac_hash["result"] = "Draw Game"
 else
   tic_tac_hash["result"] = "Incomplete Game"
 end
 p tic_tac_hash
end
