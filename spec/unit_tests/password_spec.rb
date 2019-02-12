describe Password do

  it 'database should return true for correct username and password' do
    expect(described_class.check_password('sgreen', 'password123')).to eq(true)
  end

  it 'database should return false for incorrect username' do
    expect(described_class.check_password('wrongusername', 'password123')).to eq(false)
  end

  it 'database should return false for incorrect password' do
    expect(described_class.check_password('sgreen', 'wrongpassword')).to eq(false)
  end

end
