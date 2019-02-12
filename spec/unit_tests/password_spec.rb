describe Password do


  it 'database should hold username' do
    expect(described_class.check_password('sgreen', 'password123')).to eq(true)    
  end

end