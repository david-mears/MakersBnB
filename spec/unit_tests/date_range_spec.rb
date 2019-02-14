describe DateRange do

  it 'can accept two dates and return an array of the range' do
    expect(described_class.range('12/02/2019', '15/02/2019')).to eq(['12/02/2019', '13/02/2019', '14/02/2019'])
  end

end
