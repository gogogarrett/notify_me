class Group < ActiveRecord::Base
  has_many :contacts, through: :contact_groups
  has_many :contact_groups

  has_many :messages, through: :group_messages
  has_many :group_messages
end
