def main(gets, readlines)
  first = gets.chomp.split(' ').map(&:to_i)
  use = readlines.map(&:to_i)

  balance = first[0]
  point = 0

  calculate(balance, use, point)
end

def calculate(balance, use, point)
  use.each_with_index do |use,i|
    if point >= use
      point -= use
    else
      point += use * 0.1
      balance -= use
    end
  puts "#{balance} #{point.to_i}"
  end
end

main(gets, readlines)