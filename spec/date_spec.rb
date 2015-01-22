require ('spec_helper')

describe(".date") do
  describe('#date') do
    it ('starts off with no date') do
      expect(Date.all()).to(eq([]))
    end
  end

  describe('#date') do
    it ('returns a date') do
    date = Date.new({:date => '2015-01-22'})
    expect(date.date()).to(eq('2015-01-22'))
    end
  end

end
