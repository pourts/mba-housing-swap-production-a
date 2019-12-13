class EmailValidator < ActiveModel::Validator
  def validate(user)
    if user.email.include?(".edu") == false
      user.errors[:base] << "Must use your school email address"
    end 
  end 
end 