require("rspec")
require("pg")
require("description")
require("amount")
require("date")
require("expense")
require("category")
require("pry")

DB = PG.connect({:dbname => "expense_organizer"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM expenses *;")
    DB.exec("DELETE FROM categories *;")
  end
end
