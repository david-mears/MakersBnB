describe User do

  it 'should return the requested information for a specified user_id' do
    expect(described_class.return_user_info(1).forename).to eq('Simon')
    expect(described_class.return_user_info(1).surname).to eq('Green')
    expect(described_class.return_user_info(1).password).to eq('password123')
    expect(described_class.return_user_info(1).email).to eq('simon.green@gmail.com')
  end

  it 'should return the user_id for a specified username' do
    expect(described_class.return_user_id('sgreen')).to eq(1)
  end

end