def main(gets, readlines)
  words = readlines.map(&:chomp)

  words.each do |word|
    if word.match(/([sox]|sh|ch)\z/)
      word.concat "es"
      puts word

    elsif word.match(/fe?\z/)
      word.gsub!(/fe?\z/, "ves")
      puts word

    elsif word.match(/[^aiueo]y\z/)
      word.gsub!(/y\z/, "ies")
      puts word

    else
      word.concat "s"
      puts word
    end
  end
end

main(gets, readlines)