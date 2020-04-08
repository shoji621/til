def main(gets,readlines)
  balances = gets.split(' ').map(&:to_i)
  purchases = readlines.map{|line| line.split(' ').map(&:to_i)}
  purchases.delete_at(0)
  

  purchases.each_with_index do |purchase,i|
    balance = balances[0]*500 + balances[1]*100 + balances[2]*50 + balances[3]*10
    payout = (purchase[1]*500 + purchase[2]*100 + purchase[3]*50 + purchase[4]*10) - purchase[0]

    # お釣りと自動販売機の残高を比較し、実際に払い出される硬貨の組み合わせを決定
    payouts = []

    pay500 = payout / 500
    payouts << pay500

    pay100 = (payout % 500) / 100
    if pay100 > balances[1]
      pay100 = 0
    end
    payouts << pay100

    if pay100 == 0
      pay50 = (payout % 500) / 50
      if pay50 > balances[2]
        pay50 = 0
      end
    else
      pay50 = (payout % 100) / 50
      if pay50 > balances[2]
        pay50 = 0
      end
    end
    payouts << pay50

    if pay50 == 0 
      pay10 = (payout % 100) / 10
      if pay10 > balances[3]
        pay10 = 0
      end
    else
      pay10 = (payout % 50) / 10
      if pay10 > balances[3]
        pay10 = 0
      end
    end
    payouts << pay10

    # 自動販売機の残高がお釣りより少なかったらムリ
    if balance < payout
      puts "impossible"

    # お釣りが50円と10円の組み合わせで100円以上になる時はムリ
    elsif pay50*50 + pay10*10 >= 100
      puts "impossible"

    # 払い出しが0円の時（払い出せる組み合わせがない時）
    elsif payouts == [0, 0, 0, 0]
      puts "impossible"

    else
      puts payouts.join(' ')
      balances[0] -= payouts[0]
      balances[1] -= payouts[1]
      balances[2] -= payouts[2]
      balances[3] -= payouts[3]
    end
  end
end

main(gets, readlines)