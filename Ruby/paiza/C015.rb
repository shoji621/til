def main(gets, readlines)
  recipts = readlines.map{|line| line.split(' ').map(&:to_i)}

  points = 0
  recipts.each_with_index do |point, i|
    if point[0].to_s.include?("3")
      points += (point[1]*0.03).floor
    elsif point[0].to_s.include?("5")
      points += (point[1]*0.05).floor
    else
      points += (point[1]*0.01).floor
    end
  end
  p points
end

main(gets, readlines)