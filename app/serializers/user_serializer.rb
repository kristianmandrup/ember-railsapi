class UserSerializer < ActiveModel::MongoidSerializer
  attributes :id, :first_name, :last_name, :quote, :age
end
