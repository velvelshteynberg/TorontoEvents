class User < ApplicationRecord
  has_and_belongs_to_many :attending_events,
  join_table: 'events_users',
    class_name: 'Event',
    inverse_of: :events_users
    has_and_belongs_to_many :bookmarked_events, 
    join_table: 'bookmarked_events',
    class_name: 'Event',
    inverse_of: :bookmarked_events
    has_many :events
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  before_save :default_admin
    def default_admin
   self.admin ||= false
end


def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
    user.username = auth.info.name
  end
end

def self.new_with_session(params, session)
  super.tap do |user|
    if data = session["devise.google_oauth2"] && session["devise.google_oauth2_data"]["extra"]["raw_info"]
      user.email = data["email"] if user.email.blank?
    end
  end
 end
end
