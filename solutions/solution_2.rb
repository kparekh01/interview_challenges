require 'time'

def presidentOnDate(date)
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

  presidents.map do |hash|
    (Time.parse(hash[:"took_office"]) .. Time.parse(hash[:"left_office"])).cover?(Time.parse(date)) ? hash[:"president"] : nil
    end.compact
  #uncomment all below and comment out the 2 lines above to see the looping solution for this problem.(leave this commented!)
  #   i = 0
  #   while i < presidents.length
  #    if (Time.parse(presidents[i][:"took_office"]) .. Time.parse(presidents[i][:"left_office"])).cover?(Time.parse(date)) && (Time.parse(date) != (Time.parse(presidents[i][:"left_office"])))
  #        return [presidents[i][:"president"]]
  #    elsif (Time.parse(presidents[i][:"left_office"])) == (Time.parse(date)) || (Time.parse(presidents[i + 1][:"took_office"])) == (Time.parse(date))
  #        return presidents[i][:"president"], presidents[i + 1][:"president"]
  #    end
  #    i += 1
  #   end
  # end
end


def presidentOnDateRange(date1, date2)
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
if date1.to_i > date2.to_i
  return "Please provide a valid range of dates, where date1 is less than or equal to date2"
else
  results = presidents.map do |hash|
    (Time.parse(date1)..Time.parse(date2)).cover?(Time.parse(hash[:"took_office"]))||(Time.parse(date1)..Time.parse(date2)).cover?(Time.parse(hash[:"left_office"])) ? hash[:"president"] : nil
  end.compact
end
results.empty? ? presidentOnDate(date1) : results
end


def president_sort(unorganized_hash)
  unorganized_hash.sort_by do |hash|
    hash[:"left_office"].to_i
  end
end
