class Description
  attr_reader(:description)

  define_method(:initialize) do |attributes|
    @description = attributes[:description]
  end

  define_singleton_method(:all) do
    returned_descriptions = DB.exec("SELECT * FROM expenses")
    descriptions = []
    returned_descriptions.each() do |each_description|
      description = each_description['description']
      descriptions.push(Description.new({:description => description}))
    end
    descriptions
  end

end
