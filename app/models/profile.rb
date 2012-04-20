class Profile < ActiveRecord::Base
  attr_accessible :avatar_url, :firstname, :surname, :username

  def display_name
    %{#{firstname} #{surname} (#{username})}
  end
end
