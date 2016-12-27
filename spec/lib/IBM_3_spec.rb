require "IBM_3"


describe 'IBM_3' do
  describe "#takeTurn" do

    context 'passing in the string "|0,0|2,2|0,1|2,0|0,2" as an argument' do
      it 'displays a hash with the game board and declares "x" as the winner.' do
        expect(takeTurn("|0,0|2,2|0,1|2,0|0,2")).to eql({"board"=>[["x", "x", "x"], [nil, nil, nil], ["o", nil, "o"]], "win"=>"x"})
      end
    end

    context 'passing in the string "|0,0|0,1|1,1|1,2|2,2" as an argument' do
      it 'displays a hash with the game board and declares "x" as the winner.' do
        expect(takeTurn("|0,0|0,1|1,1|1,2|2,2")).to eql({"board"=>[["x", "o", nil], [nil, "x", "o"], [nil, nil, "x"]], "win"=>"x"})
      end
    end

    context 'passing in the string "|2,2|0,0|2,0|0,1|1,1|0,2" as an argument' do
      it 'displays a hash with the game board and declares "o" as the winner.' do
        expect(takeTurn("|2,2|0,0|2,0|0,1|1,1|0,2")).to eql({"board"=>[["o", "o", "o"], [nil, "x", nil], ["x", nil, "x"]], "win"=>"o"})
      end
    end

    context 'passing in the string "|0,1|0,0|1,2|1,1|2,1|2,2" as an argument' do
      it 'displays a hash with the game board and declares "o" as the winner.' do
        expect(takeTurn("|0,1|0,0|1,2|1,1|2,1|2,2")).to eql({"board"=>[["o", "x", nil], [nil, "o", "x"], [nil, "x", "o"]], "win"=>"o"})
      end
    end

    context 'passing in the string "|0,0|1,1|2,2|0,2|2,0|2,1|0,1|1,0|1,2" as an argument' do
      it 'displays a hash with the game board full and declares "Draw Game" as the result.' do
        expect(takeTurn("|0,0|1,1|2,2|0,2|2,0|2,1|0,1|1,0|1,2")).to eql({"board"=>[["x", "x", "o"], ["o", "o", "x"], ["x", "o", "x"]], "result"=>"Draw Game"})
      end
    end

    context 'passing in the string "|0,0|2,2|2,0|0,1|1,1|0,2" as an argument' do
      it 'displays a hash with the game board and declares "Incomplete Game" as the result.' do
        expect(takeTurn("|0,0|2,2|2,0|0,1|1,1|0,2")).to eql({"board"=>[["x", "o", "o"], [nil, "x", nil], ["x", nil, "o"]], "result"=>"Incomplete Game"})
      end
    end
  end
end
