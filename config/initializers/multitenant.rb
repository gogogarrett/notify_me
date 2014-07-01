module Multitenant
  module ModelExtensions
    def self.included(base)
      base.send :include, InstanceMethods
      base.send :extend, ClassMethods
    end

    module ClassMethods
      def acts_as_tenant
        belongs_to :program
        validates :program_id, presence: true

        scope :visible, -> { where(program_id: Program.current_id) }

        before_validation(on: :create) do |obj|
          obj.program_id = Program.current_id if Program.current_id.present?
          true
        end

        # [e] I would love to have this at the model level
        # but rails 4 way is to control this at the controller level
        # if we want to still use this, we need to use strong_parameters gem
        # attr_protected :school_id
      end
    end
  end

  module InstanceMethods
  end
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.send(:include, Multitenant::ModelExtensions)
end
