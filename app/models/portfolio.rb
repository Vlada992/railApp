class Portfolio < ApplicationRecord
    has_many :technologies           #we added has_many that means his childrens are :technologies

    accepts_nested_attributes_for :technologies, reject_if: lambda { |atte| atte['name'].blank? }

    include Placeholder #include Placeholder module that will share to class and instances some functionality

    validates_presence_of :title, :body #, :main_image, :thumb_image

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_port, -> {  where(subtitle: 'Ruby on Rails') }

    after_initialize :set_defaults    #after new is invoked, .self point to that new object, instance of Portfolio class/modal
    def set_defaults
        self.main_image ||= Placeholder.image_generator(height:'600', width:'400')
        self.thumb_image ||= Placeholder.image_generator(height:'350', width:'200')
    end

end





