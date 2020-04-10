def main(n, menbers, payments)
  
  p = {}
  n.times{ |i|  p[menbers[i]] = 0 }  #名前がキー、初期値が０の連想配列pを作成
  
  payments.each do |payment|
    p.each_key{|l| p[l] += payment[1].to_i if l == payment[0]} #aに合致する連想配列pのキーの値に、bを整数化したものを加算
  end

  puts Hash[p.sort_by{|v,x| -x}].keys  #値で降順に並び替えて配列として出力したものを、ハッシュとして受け取り、キーをそれぞれ出力する

end

n = gets.to_i #人数
menbers = gets.split(' ') #名前たち
m = gets.to_i #本の購入数
payments = readlines.map{|line| line.split(' ').map(&:chomp)} # 名前と購入代金

main(n, menbers , payments)