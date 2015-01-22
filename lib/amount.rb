class Amount
  attr_reader(:amount)

  define_method(:initialize) do |attributes|
    @amount = attributes[:amount]
  end

  define_singleton_method(:all) do
    returned_amounts = DB.exec("SELECT * FROM expenses")
    amounts = []
    returned_amounts.each() do |each_amount|
      amount = each_amount['amount']
      amounts.push(Amount.new({:amount => amount}))
    end
    amounts
  end

end
