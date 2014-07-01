class Program < ActiveRecord::Base
  has_many :contacts

  def self.current_id=(id)
    Thread.current[:current_id] = id
  end

  def self.current_id
    Thread.current[:current_id]
  end
end
