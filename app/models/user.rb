class User < ActiveRecord::Base
  attr_accessible :age, :first_name, :last_name, :quote

  validates :first_name, :last_name, :presence => true
  validates :first_name, :format => /^\d+$/
  validates :age, :numericality => true
  validates :first_name, :length => 5..10
end
