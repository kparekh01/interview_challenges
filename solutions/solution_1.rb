def divisor_array(number)
    if number.class == Fixnum && number > 0
        results = {}
        lucky = []
        unlucky = []
        whoknows = []
        (1..number).each do |num|
            if num % 7 == 0 && num % 13 == 0
                whoknows << num
            elsif num % 7 == 0
                lucky << num
            elsif num % 13 == 0
                unlucky << num
            end
        end
        results["lucky"] = lucky
        results["unlucky"] = unlucky
        results["whoknows"] = whoknows
        results
    else
        false
    end
end
