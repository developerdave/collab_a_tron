class Profile < ActiveRecord::Base
  attr_accessible :avatar_url, :firstname, :surname, :username
end
