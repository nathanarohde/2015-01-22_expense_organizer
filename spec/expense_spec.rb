require('spec_helper')

describe(".expense") do
  describe("#expense") do
    it ("starts off with no expenses") do
      expect(Expense.all()).to(eq([]))
    end
  end

  describe('#id') do
    it ('returns a id') do
      # description = Description.new({:description => "Food"})
      # date = Date.new({:date => '2015-01-22'})
      # amount = Amount.new({:amount => 4.50})
      # expense = Expense.new({:description => description.description(), :date => date.date(), :amount => amount.amount()})
      expense = Expense.new({:id => 1, :category_id => 4 , :description => "Burger", :date => '2015-01-22', :amount => 4.50})
      expect(expense.id()).to(eq(1))
    end
  end

  describe('#category_id') do
    it ('returns a category') do
      expense = Expense.new({:id => 1, :category_id => 4 , :description => "Burger", :date => '2015-01-22', :amount => 4.50})
      expect(expense.category_id()).to(eq(4))
    end
  end

  describe('#description') do
    it ('returns a description') do
      # description = Description.new({:description => "Food"})
      # date = Date.new({:date => '2015-01-22'})
      # amount = Amount.new({:amount => 4.50})
      # expense = Expense.new({:description => description.description(), :date => date.date(), :amount => amount.amount()})
      expense = Expense.new({:id => 1, :category_id => 4 , :description => "Burger", :date => '2015-01-22', :amount => 4.50})
      expect(expense.description()).to(eq("Burger"))
    end
  end

  describe('#date') do
    it ('returns a date') do
      # description = Description.new({:description => "Food"})
      # date = Date.new({:date => '2015-01-22'})
      # amount = Amount.new({:amount => 4.50})
      # expense = Expense.new({:description => description.description(), :date => date.date(), :amount => amount.amount()})
      expense = Expense.new({:id => 1, :category_id => 4 , :description => "Burger", :date => '2015-01-22', :amount => 4.50})
      expect(expense.date()).to(eq("2015-01-22"))
    end
  end

  describe('#amount') do
    it ('returns a description') do
      # description = Description.new({:description => "Food"})
      # date = Date.new({:date => '2015-01-22'})
      # amount = Amount.new({:amount => 4.50})
      # expense = Expense.new({:description => description.description(), :date => date.date(), :amount => amount.amount()})
      expense = Expense.new({:id => 1, :category_id => 4 , :description => "Burger", :date => '2015-01-22', :amount => 4.50})
      expect(expense.amount()).to(eq(4.50))
    end
  end

  describe('#expense_total') do
    it ('returns an expense total') do
      expense = Expense.new({:id => 1, :category_id => 1 , :description => "Burger", :date => '2015-01-22', :amount => 4.50})
      expense.save()
      expense2 = Expense.new({:id => 2, :category_id => 1 , :description => "Chicken", :date => '2015-01-22', :amount => 4.50})
      expense2.save()
      expense3 = Expense.new({:id => 3, :category_id => 2 , :description => "Train ticket", :date => '2015-01-22', :amount => 9.00})
      expense3.save()
      expect(Expense.expense_total()).to(eq(18.00))
    end
  end

end
