module SetSidebarTopics
	extend ActiveSupport::Concern

	included do
  	before_action :set_sidebar_topics
  end

	private
		def set_sidebar_topics
		  if logged_in?(:site_admin)
		    @set_sidebar_topics = Topic.with_blogs.order(:title)
		  else
		    @set_sidebar_topics = Topic.with_blogs_published.order(:title)
		  end
		end
end