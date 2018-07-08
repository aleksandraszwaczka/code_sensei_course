class Wallet
  attr_writer :balance
  attr_reader :balance
end

wallet = Wallet.new
wallet.balance = 120
puts wallet.balance


#można zamiast razem readera i writera użyć attr_accessor
# attr_accessor :balance, :owner

#attr_reader pozwala na czytanie danego symbolu
#attr_writer pozwala na dopisanie danego symbolu (:balance) albo :symbol itd


end
