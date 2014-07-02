class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone

  # has_one :program
  # embed :ids, include: true
end
