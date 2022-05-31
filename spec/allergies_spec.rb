require_relative '../allergies'


RSpec.describe '#allergies' do
  describe '#allergies' do
    it('returns an array with user allergies') do
      expect(allergies(3)).to(eq(["eggs", "peanuts"]))
    end

    it('returns an array with user allergies') do
        expect(allergies(50)).to(eq(["eggs", "peanuts", "shellfish", "strawberries", "tomatoes"]))
    end
    
    it('returns an array with user allergies') do
        expect(allergies(140)).to(eq(["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen"]))
    end
end
end