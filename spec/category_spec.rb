require('spec_helper')

describe(".category") do
  describe("#category") do
    it ('starts off with no category') do
      expect(Category.all()).to(eq([]))
    end
  end

  describe("#category") do
    it ('returns a category') do
      category = Category.new({:category => "Junk", :id =>1})
      expect(category.category()).to(eq("Junk"))
    end
  end

  describe("#id") do
    it ('returns an id') do
      category = Category.new({:category => "Junk", :id =>1})
      expect(category.id()).to(eq(1))
    end
  end

  describe('#==') do
    it("is the same if it has the same category") do
      category1 = Category.new({:category => "Gold", :id => nil})
      category2 = Category.new({:category => "Gold", :id => nil})
      expect(category1).to(eq(category2))
    end
  end



end
