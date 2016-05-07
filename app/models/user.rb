class User < ActiveRecord::Base

  GENDER_MAPPING = {"male" => 1 , "female" => 2 }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.email_id = Koala::Facebook::API.new(user.oauth_token).get_object('me',:fields=>"email")["email"]
      user.gender = GENDER_MAPPING[ Koala::Facebook::API.new(user.oauth_token).get_object('me',:fields=>"gender")["gender"] ]
      user.save!
    end
  end

end
