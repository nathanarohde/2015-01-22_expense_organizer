class Date
  attr_reader(:date)

  define_method(:initialize) do |attributes|
    @date = attributes[:date]
  end

  define_singleton_method(:all) do
    returned_dates = DB.exec("SELECT * FROM expenses")
    dates = []
    returned_dates.each() do |each_date|
      date = each_date['date']
      dates.push(Date.new({:date=> date}))
    end
    dates
  end
  
end
