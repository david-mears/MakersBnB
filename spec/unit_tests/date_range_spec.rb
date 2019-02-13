describe DateRange do

  it 'can accept two dates and return an array of the range' do
    expect(described_class.range('12/02/19', '15/02/19')).to eq(['12/02/19', '13/02/19', '14/02/19'])
  end

end
