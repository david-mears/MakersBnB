class Password

  def self.check_password(user, password)
    stored_password = User.where(username: user).pluck(:password).first
    return false if stored_password.nil?

    valid_password = validate(stored_password)
    valid_password == password
  end

  def self.create(password)
    BCrypt::Password.create(password)
  end

  def self.validate(password)
    BCrypt::Password.new(password)
  end

end
