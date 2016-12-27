require 'IBM_2'

#keep in mind that it is easy to make the tests pass by hardcoding values, but obviously there will be hundreds more TESTS
#that you won't be able to see, so please concentrate on solving the method for any argument passed, 
#not just the ones on the tests.

describe 'IBM_2' do
  describe '#presidentOnDate' do

    context 'passing in a string date before the starting scope of the given hash as an argument' do
      it 'returns an empty array' do
        expect(presidentOnDate('1933-03-03')).to eql([])
      end
    end

    context 'passing in a string date after the ending scope of the given hash as an argument' do
      it 'returns an empty array' do
        expect(presidentOnDate('2017-01-21')).to eql([])
      end
    end

    context 'passing in a non inaugaral string date as an argument' do
      it 'returns the president in office on that date' do
        expect(presidentOnDate('2009-02-14')).to eql(["Barack Obama"])
        expect(presidentOnDate('1952-01-20')).to eql(["Harry S. Truman"])
        expect(presidentOnDate('1963-11-29')).to eql(["Lyndon B. Johnson"])
      end
    end

    context 'passing in a inaugaral string date as an argument' do
      it 'returns the 2 presidents in office on that date' do
        expect(presidentOnDate('2009-01-20')).to eql(["George W. Bush", "Barack Obama"])
        expect(presidentOnDate('1961-01-20')).to eql(["Dwight D. Eisenhower", "John F. Kennedy"])
        expect(presidentOnDate('1974-08-09')).to eql(["Richard Nixon", "Gerald Ford"])
      end
    end
  end

  describe '#presidentOnDateRange' do

    context 'passing in 2 string dates as arguments where date1 is greater than date2' do
      it 'returns the following error: "Please provide a valid range of dates, where date1 is less than or equal to date2"' do
        expect(presidentOnDateRange("1989-01-29", "1945-04-01")).to eql("Please provide a valid range of dates, where date1 is less than or equal to date2")
      end
    end

    context 'passing in 2 string dates as arguments where date1 == date2, or date1 <= date2 but there was only 1 president in office' do
      it 'returns the name of 1 president that was in office in that date range' do
        expect(presidentOnDateRange('1945-04-01', '1945-04-01')).to eql(["Franklin D. Roosevelt"])
        expect(presidentOnDateRange('2009-01-29', '2010-01-29')).to eql(["Barack Obama"])
      end
    end

    context 'passing in 2 string dates as arguments where date1 <= date2 where there was more than 1 president in office' do
      it 'returns the name of all presidents that were in office in that date range' do
        expect(presidentOnDateRange('1945-04-01', '1989-01-29')).to eql(["Franklin D. Roosevelt", "Harry S. Truman", "Dwight D. Eisenhower", "John F. Kennedy", "Lyndon B. Johnson", "Richard Nixon", "Gerald Ford", "Jimmy Carter", "Ronald Reagan", "George H. W. Bush"])
        expect(presidentOnDateRange('1974-08-09', '1981-01-10')).to eql(["Richard Nixon", "Gerald Ford", "Jimmy Carter"])
      end
    end

  end

  describe 'Array' do
    describe '#president_sort' do

      context 'passing in an a shuffled presidents hash as an argument' do
        it 'returns the presidents hash in proper order' do
          presidents = [

            {"number":32,"president":"Franklin D. Roosevelt","took_office":"1933-03-04","left_office":"1945-04-12"},

            {"number":33,"president":"Harry S. Truman","took_office":"1945-04-12","left_office":"1953-01-20"},

            {"number":34,"president":"Dwight D. Eisenhower","took_office":"1953-01-20","left_office":"1961-01-20"},

            {"number":35,"president":"John F. Kennedy","took_office":"1961-01-20","left_office":"1963-11-22"},

            {"number":36,"president":"Lyndon B. Johnson","took_office":"1963-11-22","left_office":"1969-01-20"},

            {"number":37,"president":"Richard Nixon","took_office":"1969-01-20","left_office":"1974-08-09"},

            {"number":38,"president":"Gerald Ford","took_office":"1974-08-09","left_office":"1977-01-20"},

            {"number":39,"president":"Jimmy Carter","took_office":"1977-01-20","left_office":"1981-01-20"},

            {"number":40,"president":"Ronald Reagan","took_office":"1981-01-20","left_office":"1989-01-20"},

            {"number":41,"president":"George H. W. Bush","took_office":"1989-01-20","left_office":"1993-01-20"},

            {"number":42,"president":"Bill Clinton","took_office":"1993-01-20","left_office":"2001-01-20"},

            {"number":43,"president":"George W. Bush","took_office":"2001-01-20","left_office":"2009-01-20"},

            {"number":44,"president":"Barack Obama","took_office":"2009-01-20","left_office":"2017-01-20"}
          ]
          unorganized_hashes = []
          10.times do
            unorganized_hashes << presidents.shuffle
          end
          unorganized_hashes.each do |unorganized_hash|
            expect(president_sort(unorganized_hash)).to eql([
              {:number=>32, :president=>"Franklin D. Roosevelt", :took_office=>"1933-03-04", :left_office=>"1945-04-12"},
              {:number=>33, :president=>"Harry S. Truman", :took_office=>"1945-04-12", :left_office=>"1953-01-20"},
              {:number=>34, :president=>"Dwight D. Eisenhower", :took_office=>"1953-01-20", :left_office=>"1961-01-20"},
              {:number=>35, :president=>"John F. Kennedy", :took_office=>"1961-01-20", :left_office=>"1963-11-22"},
              {:number=>36, :president=>"Lyndon B. Johnson", :took_office=>"1963-11-22", :left_office=>"1969-01-20"},
              {:number=>37, :president=>"Richard Nixon", :took_office=>"1969-01-20", :left_office=>"1974-08-09"},
              {:number=>38, :president=>"Gerald Ford", :took_office=>"1974-08-09", :left_office=>"1977-01-20"},
              {:number=>39, :president=>"Jimmy Carter", :took_office=>"1977-01-20", :left_office=>"1981-01-20"},
              {:number=>40, :president=>"Ronald Reagan", :took_office=>"1981-01-20", :left_office=>"1989-01-20"},
              {:number=>41, :president=>"George H. W. Bush", :took_office=>"1989-01-20", :left_office=>"1993-01-20"},
              {:number=>42, :president=>"Bill Clinton", :took_office=>"1993-01-20", :left_office=>"2001-01-20"},
              {:number=>43, :president=>"George W. Bush", :took_office=>"2001-01-20", :left_office=>"2009-01-20"},
              {:number=>44, :president=>"Barack Obama", :took_office=>"2009-01-20", :left_office=>"2017-01-20"}
              ])
          end
        end
      end
    end
  end
end
