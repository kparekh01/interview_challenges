#write 3 functions based on the given president hash

#function 1 will take in one string date as an argument ex: (""1977-08-09"")
#and return the name of the president that was in office on that exact date, if the date was inaugaral
#ex: "1989-01-20" both clinton and bush were presidents on that day, the method should return both the presidents names.

#function 2 will take 2 dates, and the out put should be the names of all the presidents
#that were in office within the range of those dates, make sure that date 1 is less than date 2)

#function 3 will return a new array of hashes with all of the presidents sorted by when they left office

#Bonus : Do function 3 without changing the state of the original hash.

#PLEASE DO NOT CHANGE THE NAME OF THE METHODS BELOW, AS IT WILL THROW ERRORS ON THE RSPEC TESTS
#THAT I HAVE WRITTEN LOCATED IN THE SPEC/LIB FILES.  TO RUN THE RSPEC TESTS FOR THIS FILE, CD IN TO THIS
#DIRECTORY IN YOUR TERMINAL AND RUN rspec spec/lib/IBM_2_spec.rb


#Please use this hash to complete the above assignment, DO NOT ALTER THIS HASH!!!
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

def presidentOnDate(date)

end


def presidentOnDateRange(date1, date2)

end


def president_sort(unorganized_hash)

end
