class Program < ActiveRecord::Base
  has_many :contacts
  has_many :groups

  def self.current_id=(id)
    Thread.current[:current_id] = id
  end

  def self.current_id
    Thread.current[:current_id]
  end
end
