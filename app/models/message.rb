class Message < ActiveRecord::Base
  has_many :groups, through: :group_messages
  has_many :group_messages
end
