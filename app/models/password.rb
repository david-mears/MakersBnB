class Password

  def self.check_password(user, password)
    stored_password = User.where(username: user).pluck(:password).first
    return false if stored_password.nil? || stored_password != password
    
    true
  end

end
