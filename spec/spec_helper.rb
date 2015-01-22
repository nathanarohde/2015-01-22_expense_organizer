require("rspec")
require("pg")
require("description")
require("amount")
require("date")
require("expense")

DB = PG.connect({:dbname => "expense_organizer"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM expenses *;")
  end
end
