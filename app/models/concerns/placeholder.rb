module Placeholder

    extend ActiveSupport::Concern
    def self.image_generator(height:, width:)       #{height:' ', width:''} => hash
        #you can write hash without curly braces, when hash is a parametar in brackets
        "https://via.placeholder.com/#{height}x#{width}"
    end

end



#module, concern to share some option for images, across classes/modals, it interacts with the data, thats why it's in the CONCERN fold
#we practise in Ruby, this is module, holding methods/actions in Rails, that can be shared across app, to some classes(modals)
#and our classes/modals are Skill/Topic/Portfolio/Blog etc
