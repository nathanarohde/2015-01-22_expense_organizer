require('spec_helper')

describe(".amount") do
  describe("#amount") do
    it ('starts off with no date') do
      expect(Amount.all()).to(eq([]))
    end
  end

  describe("#amount") do
    it ('returns an amount') do
      amount = Amount.new({:amount => 4.50})
      expect(amount.amount()).to(eq(4.50))
    end
  end

end
