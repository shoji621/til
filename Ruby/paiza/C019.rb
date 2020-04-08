def perfect(gets, readlines)

  numbers = readlines.map(&:to_i)

  numbers.each_with_index do |number,j|
    sum = 0
    for i in 1..number-1 do
      if number%i==0 then
          sum+=i
      end
    end
  
    if (number- sum).abs == 0 then
      puts "perfect"
    elsif (number- sum).abs == 1
      puts "nearly"
    else
      puts "neither"
    end
  end
end

perfect(gets, readlines)
