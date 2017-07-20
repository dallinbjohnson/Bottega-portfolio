 module DefaultPageContent
 	extend ActiveSupport::Concern

 	included do
		before_action :set_page_defaults
	end

  def set_page_defaults
  	@page_title = "Devcamp Portfolio | Dallin Johnson"
  	@seo_keywords = "Dallin Johnson Portfolio"
  end
end