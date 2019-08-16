class Skill < ApplicationRecord
    include Placeholder

    validates_presence_of :title, :percent_utilized #wont' rollback if we type this props!

    after_initialize :set_defaults      #after new is invoked, .self point to that new object, instance of Portfolio class/modal
    def set_defaults
        self.badge ||= Placeholder.image_generator(height:'250', width:'250')
    end

end



#includes will include modules in this class/modal!
# ||= MEANS, add default if property value is NOT NIL value [ ||= ]
