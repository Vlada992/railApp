class Portfolio < ApplicationRecord

    validates_presence_of :title, :body #, :main_image, :thumb_image

    def self.angular
        where(subtitle: 'Angular')
    end


    scope :ruby_on_rails_port, -> {  where(subtitle: 'Ruby on Rails') }

    after_initialize :set_defaults    #after new is invoked, .self point to that new object, instance of Portfolio class/modal
    def set_defaults
        self.main_image ||= 'https://via.placeholder.com/600x400'
        self.thumb_image ||= 'https://via.placeholder.com/350x200'
    end

end

=begin
main_image:"https://via.placeholder.com/600x400",
thumb_image:"https://via.placeholder.com/350x200"
=end

#after_initialize RUNS imidit after new instance of Portfolio is created with controller built in new method
#aftar_create runs after THIS and after controller create method is executed