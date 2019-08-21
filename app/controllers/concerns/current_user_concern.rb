module CurrentUserConcern
    extend ActiveSupport::Concern

    #override current_user devise method, all instance controller will have access to this method

    def current_user  #current_user method, avialable from devise gem installed from gemfile
        super || guest_user   #null object pattern
        #method will return super if not nill, and if is, will return guest_user method
    end


    def guest_user
        guest = GuestUser.new # new instance object from GuestUser object class. NEW INSTANCE
        guest.name = 'Guest User'
        guest.first_name ='Guest'
        guest.last_name ='User'
        guest.email = 'guest@example.com'
        guest # guest will be returned, ruby returns what's on LAST line inside body of method
    end

end



#module, with extending ActiveSupport class module calle Concern wich provide him all methods
#return either super || guest_user

=begin

OpenStruct.new( name: 'Guest User',
                        first_name: 'Guest',
                        last_name: 'User',
                        email: 'guest@example.com'
                      ) 
        #gem install ostruct gem
=end



#we have access to methods in this instance