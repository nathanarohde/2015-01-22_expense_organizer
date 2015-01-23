class Expense
  attr_reader(:id, :description, :amount, :date, :category_id)

  define_method(:initialize) do |attributes|
    @category_id=attributes[:category_id]
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
      category_id = each_expense['category_id']
      description = each_expense['description']
      amount = each_expense['amount']
      date = each_expense['date']
      expenses.push(Expense.new({:id => id, :category_id => category_id, :description => description, :amount => amount, :date => date}))
    end
    expenses
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO expenses (description, amount, date, category_id) VALUES ('#{@description}', #{@amount}, '#{@date}', #{@category_id}) RETURNING id;")
    @id = result.first().fetch('id').to_i()
  end



  define_singleton_method(:expense_total) do
    expense_total = 0.00
    Expense.all().each() do |each_expense|
    expense_total += each_expense.amount().to_f()
    end
    expense_total
  end

  # define_singleton_method(:join) do
  #   expense_category = DB.exec("SELECT * FROM expenses JOIN categories ON (expenses.id = categories.id)")
  #   expense_category_join = []
  # end

  # define_singleton_method(:percentage) do

  #
  #   DB.exec("SELECT * FROM expenses JOIN categories ON (expenses.id = categories.id)")
  # end

end
