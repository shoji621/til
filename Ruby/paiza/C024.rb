def main(gets, readlines)
  orders = readlines.map{|line| line.split(' ').map(&:chomp)}
  
  a = 0
  b = 0

  orders.each do |order|
    if order[0].match(/SET/) && order[1] == "1"
      a = order[2].to_i
    elsif order[0].match(/SET/) && order[1] == "2"
      b = order[2].to_i
    elsif order[0].match(/ADD/)
      b = a + order[1].to_i
    else
      b = a - order[1].to_i
    end
  end
  puts "#{a} #{b}"
end

main(gets, readlines)