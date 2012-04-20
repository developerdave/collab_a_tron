class Profile < ActiveRecord::Base
  include Gravtastic
  gravtastic

  attr_accessible :firstname, :surname, :username, :email

  def display_name
    %{#{firstname} #{surname} (#{username})}
  end
end
