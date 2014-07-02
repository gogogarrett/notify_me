class Contact < ActiveRecord::Base
  acts_as_tenant

  has_many :groups, through: :contact_groups
  has_many :contact_groups
end
