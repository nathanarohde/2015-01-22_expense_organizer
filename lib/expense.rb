class Expense
  attr_reader(:id, :category, :description, :amount, :date)

  define_method(:initialize) do |attributes|
    @category=attributes[:category]
    @id= attributes[:id]
    @description = attributes[:description]
    @amount = attributes[:amount]
    @date = attributes[:date]
  end

  define_singleton_method(:all) do
    returned_expenses = DB.exec("SELECT * FROM expenses")
    expenses = []
    returned_expenses.each() do |each_expense|
      id = each_expense['id']
      category = each_expense['category']
      description = each_expense['description']
      amount = each_expense['amount']
      date = each_expense['date']
      expenses.push(Expense.new({:id => id, :description => description, :amount => amount, :date => date}))
    end
    expenses
  end

end
