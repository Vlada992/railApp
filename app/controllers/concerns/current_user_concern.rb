module CurrentUserConcern
    extend ActiveSupport::Concern

    #override current_user devise method, all instance controller will have access to this method

    def current_user  #current_user method, avialable from devise gem installed from gemfile
        super || guest_user   #null object pattern
        #method will return super if not nill, and if is, will return guest_user method
    end

    def guest_user
        OpenStruct.new( name: 'Guest User',
                        first_name: 'Guest',
                        last_name: 'User',
                        email: 'guest@example.com'
                      ) 
        #gem install ostruct gem
    end

end