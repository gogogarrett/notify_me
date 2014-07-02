class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :contacts

  embed :ids #, include: true
end
