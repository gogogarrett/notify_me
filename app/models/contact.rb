class Contact < ActiveRecord::Base
  acts_as_tenant

  belongs_to :group
end
