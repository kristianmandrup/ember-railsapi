class User 
  include Mongoid::Document
  
  field :age, type: Integer
  field :first_name
  field :last_name
  field :quote

  validates :first_name, :last_name, :presence => true
  validates :age, :numericality => true
  validates :first_name, :length => 5..10
end
