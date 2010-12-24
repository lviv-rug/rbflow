class User < ActiveRecord::Base
  ROLES = {
    :user  => 0,
    :admin => 1
  }
  ROLES.each_pair {|role, code| define_method("#{role}?") { self.role == code } }
  
  has_many :authentications, :dependent => :destroy
  
  def self.create_with_omniauth!(auth)
    self.create! do |user|
      user.name       = auth["user_info"]["name"]
      user.email      = auth["user_info"]["email"]
      user.avatar_url = auth["user_info"]["image"]
    end
  end
  
  def approved?
    !self.approved_at.nil?
  end
  
  def approve!
    self.update_attributes(:approved_at => Time.zone.now)
    self
  end
  
  def unapprove!
    self.update_attributes(:approved_at => nil)
    self
  end
end
