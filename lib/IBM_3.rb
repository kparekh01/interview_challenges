
=begin
*** Define a method called takeTurn, which will :

1. Accept a String which has sets of numbers seperated by pipes as an argument(ie: "|0,0|2,2|0,1|2,0|0,2").
   The argument represents a set of moves on a tic tac toe board
   0,0|0,1|0,2
   1,0|1,1|1,2
   2,0|2,1|2,2
   where the first turn will always go to x, in the case of our sample argument above x would be placed at |0,0|
   y, at |2,2|, x at |0,1| etc....

2. Given a set of moves represented by the string argument where x always goes first, this method should display
   a hash where the key is "board", the value is an array of arrays representing the moves by x and o AND
   the result of the game(ie: if the set of moves represents a win by x or o, then result of game will be represented by
   a key called "win" pointing to a value of "x" or "o"("win" => "x" or "win" => "o"))

   Ex Input: takeTurn("|0,0|2,2|0,1|2,0|0,2")
   Ex Output: {"board"=>[["x", "x", "x"], [nil, nil, nil], ["o", nil, "o"]], "win"=>"x"}

3. If set of moves takes up the "entire board" and there is no winner, then the method should return the board
   along with a key called "result" pointing to value "Draw Game" ("result" => "Draw Game").

   Ex Input: takeTurn("|0,0|1,1|2,2|0,2|2,0|2,1|0,1|1,0|1,2")
   Ex output: {"board"=>[["x", "x", "o"], ["o", "o", "x"], ["x", "o", "x"]], "result"=>"Draw Game"}

4. If entire board is "not taken" and there is "no winner" on the board, the method hould return the board
   along with a key called "result" pointing to a value "Incomplete Game"

   Ex Input: takeTurn("|0,0|2,2|2,0|0,1|1,1|0,2")
   Ex Output: {"board"=>[["x", "o", "o"], [nil, "x", nil], ["x", nil, "o"]], "result"=>"Incomplete Game"}
=end


#PLEASE DO NOT CHANGE THE NAME OF THE METHOD BELOW, AS IT WILL THROW ERRORS ON THE RSPEC TESTS
#THAT I HAVE WRITTEN LOCATED IN THE SPEC/LIB FILES.  TO RUN THE RSPEC TESTS FOR THIS FILE, CD IN TO THIS
#DIRECTORY IN YOUR TERMINAL AND RUN rspec spec/lib/IBM_3_spec.rb


def takeTurn(string)
#your logic goes here.
end
