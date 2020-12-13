class ClockUser < ApplicationRecord  
 
    attr_accessor :password
  
    before_save :encrypt_password
    after_save :clear_password

    validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :password, :confirmation => true
    
    #Only on Create so other actions like update password attribute can be nil
    validates_length_of :password, :in => 6..20, :on => :create
  
    #attr_accessible :username, :password, ,:password_confirmation
    has_many :ClockEvent
  
    def self.authenticate(login_userId="", login_password="")
      
      user = ClockUser.find_by(username: login_userId)
      if user && user.match_password(login_password)
        return user
      else
        return false
      end
    end   
  
    def match_password(login_password="")
      password == BCrypt::Engine.hash_secret(login_password, salt)
    end
  
    def encrypt_password
      unless password.blank?
        self.salt = BCrypt::Engine.generate_salt
        self.password = BCrypt::Engine.hash_secret(password, salt)
      end
    end
  
    def clear_password
      self.password = nil
    end
  

end
