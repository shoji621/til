def main(gets,readlines)

  caunter = gets.split(' ').map(&:to_i)
  caunter_sppeds = readlines.map(&:to_i)

  people = caunter[1]
  finished_people = 0
  i = 1 #求めたい解

  while finished_people < people do
    finished_people = 0
    caunter_sppeds.each do |speed|
      finished_people += (i.to_f / speed).floor
    end
    i += 1 if finished_people < people
  end

  speed_latest = caunter_sppeds.max

  if speed_latest > i
    p speed_latest
  else
    p i
  end

end

main(gets,readlines)