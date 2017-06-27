class TopicsController < ApplicationController
  before_action :set_sidebar_topics
	layout 'blog'
  def index
  	@topics = Topic.all
  end

  def show
  	@topic = Topic.find(params[:id])

  	if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.Published.recent.page(params[:page]).per(5)
    end
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
