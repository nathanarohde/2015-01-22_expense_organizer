class Category
  attr_reader(:category, :id)

  define_method(:initialize) do |attributes|
    @category = attributes[:category]
    @id = attributes[:id]
  end

  define_singleton_method(:all) do
    returned_categories = DB.exec("SELECT * FROM categories")
    categories = []
    returned_categories.each() do |each_category|
      category = each_category['category']
      id = each_category['id']
      categories.push(Category.new({:category => category, :id => id}))
    end
    categories
  end

  define_method(:==) do |another_category|
    self.category().==(another_category.category()).&(self.id().==(another_category.id()))
  end

  # define_method(:add_expense) do |expense|
  #   categories_expenses = DB.exec("SELECT * FROM
  #   categories JOIN expenses ON expense.category_id = category_id
  #   WHERE categories")
  # end

end
