require('spec_helper')

describe(".description") do
  describe('#description') do
    it ('starts off with no descriptions') do
      expect(Description.all()).to(eq([]))
    end
  end

  describe('#description') do
    it ('returns a description') do
      description = Description.new({:description => "Food"})
      expect(description.description()).to(eq("Food"))
    end
  end

end
