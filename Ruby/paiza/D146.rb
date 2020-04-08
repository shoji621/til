def word(input_line)
puts input_line.gsub(/a|i|u|e|o/, "")
end

# ある単語が与えられるので、母音を削除した結果の文字列を出力するプログラムを作成してください。
# なお、母音とは 「a, e, i, o, u」 のことを指しています。
word("tamago")