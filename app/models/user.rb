class User < ActiveRecord::Base
  #attr_accessible :name, :provider, :uid

  def self.from_omniauth(auth)
  	#slice method returns a new hash with the keys specified /extracts one hash from another.
  	#attempt to find provider and userid in User table if not found create user from omnimauth auth hash.
    #SELECT provider, uid, name FROM Users WHERE provider = twitter AND uid = uid.
  	where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
  	#create a user from omniauth hash.
  	create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]    
  	end
  end
end
