class User 
  include Mongoid::Document
  
  field :age, type: Integer
  field :first_name
  field :last_name
  field :quote

  validates :first_name, :last_name, :presence => true
  validates :age, :numericality => true
  validates :first_name, :length => 5..10

  after_create do
    @created = true
  end

  after_update do
    @created = false
  end

  after_destroy do
    @destroyed = true
  end

  def created?
    @created
  end

  def destroyed?
    @destroyed
  end
end
