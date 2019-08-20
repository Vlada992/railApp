module DefaultPageContent

    extend ActiveSupport::Concern        #all methods from activeSuport modules extend ActiveSupport.Concern (module)

    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "My Rail Portfolio | Portfolio website"
        @seo_keywords = 'Vladan Petrovic Portfolio Rail'
    end


end 




   
