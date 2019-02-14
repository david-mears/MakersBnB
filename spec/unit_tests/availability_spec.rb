describe Availability do

  describe '#populate_available_dates' do
    it 'puts in database all dates between two points' do
      described_class.populate_available_dates(1, '01/01/2001', '04/01/2001')
      availabile_dates_arr = Availability.where(space_id: 1).map { |availability| availability.date }
      expect(availabile_dates_arr).to include(Date.new(2001, 01, 01))
      expect(availabile_dates_arr).to include(Date.new(2001, 01, 02))
      expect(availabile_dates_arr).to include(Date.new(2001, 01, 03))
      expect(availabile_dates_arr).not_to include(Date.new(2001, 01, 04))
    end
  end
end
