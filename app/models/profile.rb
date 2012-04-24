class Profile < ActiveRecord::Base
  include Gravtastic
  gravtastic

  validates :firstname, :presence => true
  validates :surname, :presence => true
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true

  attr_accessible :firstname, :surname, :username, :email, :job_role, :website, :twitter, :github

  def display_name
    %{#{firstname} #{surname} (#{username})}
  end
end
