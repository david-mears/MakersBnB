class Password

  def self.check_password(user, password)
    stored_password = User.where(username: user).pluck(:password).first
    return false if stored_password.nil?
    
    decrypt = BCrypt::Password.new(stored_password)
    decrypt == password
  end

end
