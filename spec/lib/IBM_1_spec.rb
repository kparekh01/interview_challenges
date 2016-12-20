require "IBM_1"


describe 'IBM_1' do
  describe "#divisor_array" do

    context "passing in the number 0 as an argument" do
      it "returns false" do
        expect(divisor_array(-1)).to eql(false)
      end
    end

    context "passing in the number -1 as an argument" do
      it "returns false" do
        expect(divisor_array(-1)).to eql(false)
      end
    end

    context 'passing in any string as an argument' do
      it "returns false" do
        expect(divisor_array('five')).to eql(false)
      end
    end

    context 'passing in the number 6 as an argument' do
      it 'returns {"lucky"=>[], "unlucky"=>[], "whoknows"=>[]}' do
        expect(divisor_array(6)).to eql({"lucky"=>[], "unlucky"=>[], "whoknows"=>[]})
      end
    end

    context 'passing in the number 10 as an argument' do
      it 'returns {"lucky"=>[7], "unlucky"=>[], "whoknows"=>[]}' do
        expect(divisor_array(10)).to eql({"lucky"=>[7], "unlucky"=>[], "whoknows"=>[]})
      end
    end

    context 'passing in the number 10 as an argument' do
      it 'returns {"lucky"=>[7], "unlucky"=>[13], "whoknows"=>[]}' do
        expect(divisor_array(13)).to eql({"lucky"=>[7], "unlucky"=>[13], "whoknows"=>[]})
      end
    end

    context 'passing in the number 100 as an argument' do
      it 'returns {"lucky"=>[7, 14, 21, 28, 35, 42, 49, 56, 63, 70, 77, 84, 98], "unlucky"=>[13, 26, 39, 52, 65, 78], "whoknows"=>[91]}' do
        expect(divisor_array(100)).to eql({"lucky"=>[7, 14, 21, 28, 35, 42, 49, 56, 63, 70, 77, 84, 98], "unlucky"=>[13, 26, 39, 52, 65, 78], "whoknows"=>[91]})
      end
    end

  end
end
