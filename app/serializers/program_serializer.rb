class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio

  # has_many :contacts
  has_many :contacts

  embed :ids, include: true
end
